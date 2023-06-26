@echo off

set "outputFile=files.txt"

echo Generating list of files...

REM Clear the output file if it already exists
if exist "%outputFile%" del "%outputFile%"

REM Generate the list of files
for %%F in (*.png) do (
    echo %%F >> "%outputFile%"
)

echo File list generated successfully.
