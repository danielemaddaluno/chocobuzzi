@echo off
setlocal enabledelayedexpansion

:: https://docs.veyon.io/en/latest/admin/installation.html#examples
:: Set the search path to the directory where the batch file is located
set "searchPath=%~dp0"
set "fileFound=false"


for %%f in ("%searchPath%veyon-*.exe") do (
	set "filePath=%%f"
    set "fileName=%%~nxf"

    :: Check if "addons" is not present in the file name
    echo !fileName! | find /i "addons" > nul
    if errorlevel 1 (
		echo FileName: !fileName!
		echo FilePath: !filePath!
        "!filePath!" /S /ApplyConfig="%searchPath%pc_master_config.json"
        set "fileFound=true"
    )
)

if not !fileFound! (
    echo No matching file found for veyon-*.exe.
)