@echo off

REM Make Folders

:start
set /p dname= Enter Folder Name

md %dname%\APs %dname%\Fortinet %dname%\NodeStatus %dname%\Pings %dname%\Script %dname%\Switches %dname%\InstallScripts

echo Compress-Archive %dname% %dname%.zip >> ZIP.ps1

REM Make More Folders
set /p choice= "Create another folder? Y or N "

if /i '%choice%'=='y' goto start
if /i '%choice%'=='n' goto writeclear

:writeclear
echo Clear-Content ZIP.ps1 >> ZIP.ps1