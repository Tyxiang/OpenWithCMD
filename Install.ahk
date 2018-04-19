RunAsAdmin()

;MsgBox, %A_ScriptDir%

RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD, ,Open with CMD
RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD\command, , cmd.exe /k cd `%1
RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD, icon, C:\Windows\system32\cmd.exe

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD, ,Open with CMD
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD\command, , C:\Windows\system32\cmd.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD, icon, C:\Windows\system32\cmd.exe

MsgBox, 64, OpenWithCMD, Installing Succeed!


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