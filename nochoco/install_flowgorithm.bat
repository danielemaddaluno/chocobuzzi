@echo off
setlocal enabledelayedexpansion

:: Set the search path to the directory where the batch file is located
set "searchPath=%~dp0"
set "fileFound=false"

for %%f in ("%searchPath%Flowgorithm*.msi") do (
    set "filePath=%%f"
    echo Found: !filePath!
    "!filePath!" /quiet
    set "fileFound=true"
)

if not !fileFound! (
    echo No matching file found for Flowgorithm*.msi.
)
