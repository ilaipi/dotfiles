:: Add an IP address in Ubuntu, 192.168.50.16, named eth0:1
wsl -d Ubuntu-20.04 -u root ip addr add 192.168.50.16/24 broadcast 192.168.50.255 dev eth0 label eth0:1

:: Add an IP address in Win10, 192.168.50.88
netsh interface ip add address "vEthernet (WSL)" 192.168.50.88 255.255.255.0
