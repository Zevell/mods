@echo off
>git-clone.bat (
    echo @echo off
    echo RD /S /Q mods
    echo git clone https://github.com/Zevell/mods.git mods
)
echo F|xcopy /s /Y "%CD%\git-clone.bat" "..\git-clone.bat"
cd ..
start "git clone" cmd /c "git-clone.bat"