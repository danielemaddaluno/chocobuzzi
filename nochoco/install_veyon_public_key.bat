@echo off
setlocal enabledelayedexpansion

:: https://docs.veyon.io/en/latest/admin/installation.html#examples
:: Set the search path to the directory where the batch file is located
set "searchPath=%~dp0"
set "fileFound=false"

for %%f in ("%searchPath%veyon_teacher_public_key.pem") do (
    set "filePath=%%f"
    echo Found: !filePath!
    "C:\Program Files\Veyon\veyon-cli.exe" authkeys import teacher/public "!filePath!"
    set "fileFound=true"
)

if not !fileFound! (
    echo No matching file found for veyon-*.exe.
)