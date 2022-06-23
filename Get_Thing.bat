@ECHO OFF

ECHO Getting Thingiverse Thing

:start
SET choice=
SET /p choice=Save Thing to Desktop? [y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
set /p id="Enter ID: "
START "" "D:\thingy_grabber\thingy_grabber.exe" -a f2cc5dd652fb3ef1b3082461d612f391 -d "\\192.168.1.2\3D_Files\3D Print Files\a-Thingiverse_Collections\Individual_Things" thing %id%
ECHO Do all of the no things here!
EXIT

:yes
set /p id="Enter ID: "
START "" "D:\thingy_grabber\thingy_grabber.exe" -a f2cc5dd652fb3ef1b3082461d612f391 -d "C:\Users\sonja\Desktop" thing %id% 
ECHO Saving to desktop!
EXIT