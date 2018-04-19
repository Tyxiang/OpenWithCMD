RunAsAdmin()

RegDelete, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD
RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD

MsgBox, 64, PasteDirectory, Uninstalling Succeed!


RunAsAdmin(){
    ;以管理员权限运行脚本
    full_command_line := DllCall("GetCommandLine", "str")
    if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
    {
        try
        {
            if A_IsCompiled
                Run *RunAs "%A_ScriptFullPath%" /restart
            else
                Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
        }
        ExitApp
    }
}