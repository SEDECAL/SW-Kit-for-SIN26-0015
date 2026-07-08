@echo off
cls
echo Script for BIOS LOGO CHANGE LENOVO P330
xcopy C:\OEM\BIOS\loading.jpg C:\SWTOOLS\FLASH\M1VJY79USA
cd C:\SWTOOLS\FLASH\M1VJY79USA
cmd.exe /c wFlashGUIx64.exe /logo:loading.jpg /pass:$3Dec%L
cd C:\OEM\BIOS


echo Script for DEFAULT BIOS SETTINGS LENOVO P330
xcopy C:\OEM\BIOS\settings.txt C:\SWTOOLS\FLASH\M1VJW79USA
cd C:\SWTOOLS\FLASH\M1VJW79USA
CFGWIN_x64 /r /path:C:\SWTOOLS\FLASH\M1VJW79USA\settings.txt /admin:"$3Dec%L"
cd \
rd C:\OEM\BIOS /s /q
rd C:\SWTOOLS /s /q
shutdown /r /t: 0
