@echo off
cls
echo Script for DEFAULT BIOS SETTINGS LENOVO P360 v63
cd C:\SWTOOLS\FLASH\S0EJW63USA\
cmd.exe /c CFGWIN_x64 /r /path:settings.txt /admin:"asdfg"
cmd.exe /c CFGWIN_x64 /r /path:password.txt /admin:"asdfg"
cd \
rd C:\SWTOOLS /s /q
rd c:\OEM\BIOS /s /q
shutdown /r /t: 0
