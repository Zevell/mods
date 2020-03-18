@echo off
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install git -y
>git-clone.bat (
    echo @echo off
    echo RD /S /Q mods
    echo git clone https://github.com/Zevell/mods.git mods
)
echo F|xcopy /s /Y "%CD%\git-clone.bat" "..\git-clone.bat"
cd ..
start "git clone" cmd /c "git-clone.bat"