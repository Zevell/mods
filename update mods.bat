@echo off
>git-pull.bat (
    echo @echo off
    echo cd mods
    echo git pull origin master
)
echo F|xcopy /s /Y "%CD%\git-pull.bat" "..\git-pull.bat"
cd ..
start "git pull" cmd /c "git-pull.bat"