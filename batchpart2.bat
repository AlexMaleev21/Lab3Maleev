@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Input path to catalog:
    set /p "dir="
) else (
    set "dir=%~1"
)

if not exist "%dir%\" (
    echo Catalog does not exist.
    exit /b 1
)

set /a totalFiles=0
set /a hiddenFiles=0
set /a readOnlyFiles=0
set /a archiveFiles=0

for /r "%dir%" %%i in (*) do (
    set /a totalFiles+=1
    attrib "%%i" | find "H" >nul && set /a hiddenFiles+=1
    attrib "%%i" | find "R" >nul && set /a readOnlyFiles+=1
    attrib "%%i" | find "A" >nul && set /a archiveFiles+=1
)

echo Amount of files in cataloges: %totalFiles%
echo Amount of hidden files: %hiddenFiles%
echo Amount of files only for reading: %readOnlyFiles%
echo Amount of archive files: %archiveFiles%

if "%~2" neq "" (
    echo Help mode:
    echo First parameter - path to catalog.
    echo Other parameters will be ignored.
)

if %totalFiles% equ 0 exit /b 1
exit /b 0