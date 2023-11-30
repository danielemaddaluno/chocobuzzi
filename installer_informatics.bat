@echo off

:: This is a comment for below:
:: Documentation of "choco pin": pin a package to suppress upgrades.
:: This is especially helpful when running choco upgrade for all packages
:: See https://docs.chocolatey.org/en-us/choco/commands/pin


:: Check if the script is run with administrative privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo The batch file has not been launched as administrator.
    echo You have to run this batch file as administrator.
    pause
    exit /b 1
) else (
    echo Batch file is running with administrator privileges.
    echo .
)
:: pause
:: echo .


:: Select type of PC: student or teacher
set /p pc_role="Install for a student PC? (Y/n) --> Y (Student), N (Teacher):"
if /i "%pc_role%"=="N" (
    echo Confirmed as teacher PC.
) else (
    echo Confirmed as student PC.
)
echo .


:: Ask confirmation to install chocolatey and tools
echo This script will first install chocolatey, then other tools.
echo Browse https://chocolatey.org/packages for a list of available packages
echo .

set /p user_input="Do you want to continue? (Y/n):"

if /i "%user_input%"=="Y" (
    echo You confirmed. Proceeding with the operations.
) else (
    echo You did not confirm. Exiting.
    pause
    exit /b 1
)


:: Install Chocolatey
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

:: By default you have to press Enter multiple times to give permission to install all of the applications.
:: Enabling allowGlobalConfirmation the permission/confirmation will be given automatically.
choco feature enable -n=allowGlobalConfirmation
:: pause

echo Now chocolatey should be ready and we can go ahead
echo .
:: pause




:: Install the chocolatey packages listed below
choco install arduino
choco install eclipse
choco install androidstudio
choco install codeblocks
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
choco install xampp-81
choco install notepadplusplus
choco install projectlibre
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
choco install datagrip


set "pwdPath=%~dp0"
if /i "%pc_role%"=="N" (
    start /wait cmd /c "%pwdPath%nochoco/install_veyon_master.bat"
) else (
    start /wait cmd /c "%pwdPath%nochoco/install_veyon_client.bat"
)
start /wait cmd /c "%pwdPath%nochoco/install_veyon_addons.bat"
start /wait cmd /c "%pwdPath%nochoco/install_emu8086.bat"
start /wait cmd /c "%pwdPath%nochoco/install_emu8086_reg.bat"
start /wait cmd /c "%pwdPath%nochoco/install_flowgorithm.bat"
start /wait cmd /c "%pwdPath%nochoco/install_packet_tracer.bat"
start /wait cmd /c "%pwdPath%nochoco/install_mysql_workbench.bat"
start /wait cmd /c "%pwdPath%nochoco/install_staruml.bat"
start /wait cmd /c "%pwdPath%nochoco/install_virtualbox.bat"


echo To keep your system updated, run update_all.bat regularly from an administrator cmd.exe.
echo .
echo Batch file has completed successfully. Press any key to exit.
echo .
pause