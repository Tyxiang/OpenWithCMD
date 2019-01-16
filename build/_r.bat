"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon ..\icon.ico /in ..\Install.ahk /out Install.exe
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon ..\icon.ico /in ..\Uninstall.ahk /out Uninstall.exe

copy /Y ..\README.md

_7z.exe a OpenWithCMD.zip *.* -x@_x.ini

pause