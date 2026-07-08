@echo off
cls
echo Script for BIOS LOGO CHANGE LENOVO P360 v63
cmd.exe /c C:\OEM\BIOS\s0ejy63usa.exe /dir=C:\SWTOOLS\FLASH\s0ejy63usa /verysilent /extract=yes
cmd.exe /c C:\OEM\BIOS\s0ejw63usa.exe /dir=C:\SWTOOLS\FLASH\s0ejw63usa /verysilent /extract=yes
xcopy C:\OEM\BIOS\loading.jpg C:\SWTOOLS\FLASH\s0ejy63usa\
xcopy C:\OEM\BIOS\settings.txt C:\SWTOOLS\FLASH\S0EJW63USA\
cd C:\SWTOOLS\FLASH\s0ejy63usa\
Pause
cmd.exe /c wflashGUIx64.exe /logo:loading.jpg /pass:$3Dec%L
Pause
cmd.exe /c wflashGUIx64.exe /pass:$3Dec%L
