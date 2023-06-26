@echo off
setlocal enabledelayedexpansion

for %%F in (*.*) do (
    set "filename=%%~nxF"
    set "extension=%%~xF"
    
    set "newname=!filename:_i2=!"
    if "!filename:~-6!"=="_h.png" (
        set "newname=!newname:_h.png=.png!"
    )
    
    if not "!newname!"=="!filename!" (
        ren "%%F" "!newname!"
        echo Renamed "%%F" to "!newname!"
    )
)

endlocal
