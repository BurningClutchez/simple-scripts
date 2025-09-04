@echo off
setlocal enableextensions enabledelayedexpansion

:: This script finds and deletes all files with "copy" in their name.
:: Use with caution, as it will permanently delete files.

set "search_dir=%cd%"

echo Searching for files with "copy" in their name...

:: The FOR /R command is the equivalent of 'find' for files in a directory hierarchy.
:: It recursively searches the current directory and all subdirectories.
:: The %%f variable holds the full path of each file found.
for /r "%search_dir%" %%f in (*copy*) do (
    echo Found file: "%%f"
    
    set /p "choice=Are you sure you want to delete this file? (y/n) "

    if /i "!choice!"=="y" (
        :: The DEL command is used to delete files.
        :: The /F switch forces the deletion of read-only files.
        :: The /Q switch runs in quiet mode, so it doesn't prompt for confirmation.
        del /f /q "%%f"
        echo Deleted: "%%f"
    ) else (
        echo Skipped: "%%f"
    )
)

echo Script finished.
pause