#Include RunAsAdmin.ahk
RunAsAdmin()

RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD, ,Open with CMD
RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD\command, , cmd.exe /k cd `%1
RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Folder\shell\OpenWithCMD, icon, C:\Windows\system32\cmd.exe

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD, ,Open with CMD
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD\command, , C:\Windows\system32\cmd.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\OpenWithCMD, icon, C:\Windows\system32\cmd.exe

MsgBox, 64, OpenWithCMD, Installing Succeed!