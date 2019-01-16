#Include RunAsAdmin.ahk
RunAsAdmin()

RegDelete, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD
RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD

MsgBox, 64, PasteDirectory, Uninstalling Succeed!