@echo off

rem Check if the script is run with administrative privileges
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
rem pause
rem echo .


rem Ask confirmation to install chocolatey and tools
echo This script will update all chocolatey packages installed on this host.
echo .

set /p user_input=Do you want to continue? (Y/n):

if /i "%user_input%"=="Y" (
    echo You confirmed. Proceeding with the operations.
) else (
    echo You did not confirm. Exiting.
    pause
    exit /b 1
)


echo Updating all packages...
call choco upgrade all
echo .
echo To keep your system updated, run this script regularly from an administrator cmd.exe.
echo .
pause