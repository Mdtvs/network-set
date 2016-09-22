@echo off
set /p mesto="choice your settings (1 - home, 2 - work): "
echo your had - %mesto%

if %mesto% equ 2 goto rabota

:dom
set IFACE="local"
set IP=10.9.15.93
set MASK=255.255.255.248
set GATEWAY=10.9.15.94
set GWMETRIC=1
set DNS1=90.188.32.22
rem set MAC=001122334455
goto smena

:rabota
set IFACE="local"
set IP=10.9.10.115
set MASK=255.255.255.0
set GATEWAY=10.9.10.254
set GWMETRIC=1
set DNS1=192.168.1.10
rem set MAC=221133004455
goto smena 

:smena
rem echo Меняем MAC адрес на %MAC%
rem echo _____
rem macshift -i "local" %MAC%

echo _____
echo seting ip address-%IP%
echo subnetmask-%MASK%
echo native gateway-%GATEWAY%

netsh interface ip set address name=%IFACE% source=static addr=%IP% mask=%MASK% gateway=%GATEWAY% gwmetric=%GWMETRIC%

echo setting  DNS server %DNS1%
netsh interface ip set dns name=%IFACE% source=static addr=%DNS1% register=PRIMARY

echo settings has been changed:
ipconfig /all
echo _____
pause
