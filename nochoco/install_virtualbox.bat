@echo off
setlocal enabledelayedexpansion

:: Set the search path to the directory where the batch file is located
set "searchPath=%~dp0"
set "fileFound=false"

for %%f in ("%searchPath%VirtualBox*.exe") do (
    set "filePath=%%f"
    echo Found: !filePath!
    "!filePath!" --silent --ignore-reboot
    set "fileFound=true"
)

if not !fileFound! (
    echo No matching file found for VirtualBox*.exe.
)
