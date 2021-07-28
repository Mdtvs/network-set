netsh interface ip set address name=eth0 source=static addr=10.9.10.115 mask=255.255.255.0 gateway=10.9.10.254 gwmetric=1
netsh interface ip set dns name=eth0 source=static addr=8.8.8.8 register=PRIMARY
pause
