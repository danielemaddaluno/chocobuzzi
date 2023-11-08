@echo off

rem This is a comment for below:
rem Documentation of "choco pin": pin a package to suppress upgrades.
rem This is especially helpful when running choco upgrade for all packages
rem See https://docs.chocolatey.org/en-us/choco/commands/pin

echo This will first install chocolatey, then other tools
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
echo Ensure that your cmd.exe runs as Administrator
echo .
pause
echo .

rem powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

rem Install Chocolatey
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

rem By default you have to press Enter multiple times
rem to give permission to install all of the applications.
rem Enabling allowGlobalConfirmation it is no more required.
choco feature enable -n=allowGlobalConfirmation
pause

echo Now chocolatey should be ready and we can go ahead
echo .
pause

choco install arduino
choco install eclipse
choco install androidstudio
rem choco pin: see comment on top of this file
choco install orwelldevcpp
choco pin add -n=orwelldevcpp
choco install vscode
choco install python
choco install r
choco install r.studio
choco install inkscape
choco install git
choco install cygwin
choco install advanced-port-scanner
choco install wireshark
choco install filezilla
choco install mysql.workbench
choco install xampp-81
choco install notepadplusplus
rem choco pin: see comment on top of this file
choco install staruml2
choco pin add -n=staruml2
choco install projectlibre
choco install virtualbox
choco install libreoffice-fresh
choco install googlechrome
choco install firefox
choco install 7zip
choco install jdk8
choco install oracle17jdk
choco install intellijidea-ultimate
choco install clion-ide
choco install pycharm
choco install phpstorm

echo To keep your system updated, run update-all.bat regularly from an administrator cmd.exe.
echo .
pause