cd OpenWithCMD

"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Install.ahk
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Uninstall.ahk

copy /Y Install.exe ..\Release\
copy /Y Uninstall.exe ..\Release\
copy /Y README.md ..\Release\

cd ..