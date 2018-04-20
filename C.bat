"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Install.ahk
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Uninstall.ahk

copy /Y Install.exe ..\_release\
copy /Y Uninstall.exe ..\_release\
copy /Y README.md ..\_release\