@echo off

set "outputFile=png_files.txt"
setlocal enabledelayedexpansion

echo Generating list of PNG files...

(for /R %%F in (*.png) do (
    set "filePath=%%~dpF%%~nxF"
    echo !filePath:\=/!
)) > "%outputFile%"

echo List of PNG files generated: %outputFile%

endlocal