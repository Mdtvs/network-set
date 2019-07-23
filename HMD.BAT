netsh interface ip set address name=eth0 source=static addr=10.9.16.85 mask=255.255.255.248 gateway=10.9.16.86 gwmetric=1
netsh interface ip set dns name=eth0 source=static addr=8.8.8.8 register=PRIMARY
