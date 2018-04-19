"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Install.ahk
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Uninstall.ahk

copy /Y Install.exe ..\Release\OpenWithCMD\
copy /Y Uninstall.exe ..\Release\OpenWithCMD\
copy /Y README.md ..\Release\OpenWithCMD\