@echo off

setlocal enabledelayedexpansion

set "trainFolder=train"
set "valFolder=val"

REM Create train and val folders
mkdir "%trainFolder%"
mkdir "%valFolder%"

echo Moving files...

REM Count the total number of PNG files
set totalCount=0
for /R %%F in (*.png) do (
    set /a totalCount+=1
)

REM Calculate the number of files to move to val
set /a valCount=totalCount/10

REM Move files to val folder
set count=0
for /R %%F in (*.png) do (
    if !count! lss %valCount% (
        move "%%F" "%valFolder%"
    ) else (
        move "%%F" "%trainFolder%"
    )
    set /a count+=1
)

echo Files moved successfully.
