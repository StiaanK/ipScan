col="\e[31m"
eCol="\e[0m"

echo '
|===============================[Interface Selection]===============================|
'
#showing and chosing interface
ifconfig
read -p "Select an interface: " inter 

#triming ip addr
ipAddr=`ip addr show $inter | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`
echo -e "Device IP: ${col}${ipAddr}${eCol}"
ipAddr=${ipAddr%.*}.0

#recieving subnet size
read -p "Select subnet mask [24/16/8]: " size
echo -e "Scanning  ${col}${ipAddr}/${size}${eCol} "

echo '
|===============================[Nmap Scan]===============================|
'

#starting nmap scan
sudo nmap -sS -T4 $ipAddr/$size

echo '
|===============================[Scan Finished]===============================|
'