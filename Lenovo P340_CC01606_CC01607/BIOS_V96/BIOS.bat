@echo off
cls
echo Script for BIOS LOGO CHANGE LENOVO P340 v60
xcopy C:\OEM\BIOS\loading.jpg C:\SWTOOLS\FLASH\s08jy60usa
cd C:\SWTOOLS\FLASH\s08jy60usa
cmd.exe /c wflashGUIx64.exe /logo:loading.jpg

echo Script for DEFAULT BIOS SETTINGS LENOVO P340 v60
xcopy C:\OEM\BIOS\settings.txt C:\SWTOOLS\FLASH\s08jw60usa
cd C:\SWTOOLS\FLASH\s08jw60usa
cmd.exe /c CFGWIN_x64 /r /path:settings.txt /admin:"$3Dec%L"
shutdown /r /t: 0
