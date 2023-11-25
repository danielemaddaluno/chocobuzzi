@echo off
setlocal enabledelayedexpansion

:: Set the search path to the directory where the batch file is located
set "searchPath=%~dp0"
set "fileFound=false"

for %%f in ("%searchPath%veyon-[0-9]+-*.exe") do (
    set "filePath=%%f"
    echo Found: !filePath!
    "!filePath!" /S /ApplyConfig="%searchPath%pc_master_config.json"
    set "fileFound=true"
)

if not !fileFound! (
    echo No matching file found for veyon-*.exe.
)