@echo off
setlocal enabledelayedexpansion

:: Set the search path to the directory where the batch file is located
set "searchPath=%~dp0"
set "fileFound=false"
set "destinationPath=C:\emu8086\reg.ini"

for %%f in ("%searchPath%emu8086_reg.ini") do (
    set "sourceFile=%%f"
    echo Found: !sourceFile!
    copy "!sourceFile!" "%destinationPath%"
    set "fileFound=true"
)

if not !fileFound! (
    echo No matching file found for emu8086_reg.ini.
)
