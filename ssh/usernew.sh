#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
clear
# Getting
sldomain=$(cat /root/nsdomain)
cdndomain=$(cat /root/awscdndomain)
slkey=$(cat /etc/slowdns/server.pub)
clear
cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
domen=`cat /etc/xray/domain`
else
domen=`cat /etc/v2ray/domain`
fi
portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
wsssl=`cat /root/log-install.txt | grep -w "SSH SSL Websocket" | cut -d: -f2 | awk '{print $1}'`
          # CREATE S S H 
green_background="\033[42;37m"
red_background="\033[41;37m"
LC="\e[1;36m"
NC="\033[0m"
clear
echo -e "     ${LC}=========Create Account==========${NC}"
echo -e ""
echo -e "${hijau}"
read -p "        Username : " Login
read -p "        Password : " Pass
read -p "        Expired  : " masaaktif
IP=$(curl -sS ifconfig.me);
ossl=`cat /root/log-install.txt | grep -w "OpenVPN" | cut -f2 -d: | awk '{print $6}'`
opensh=`cat /root/log-install.txt | grep -w "OpenSSH" | cut -f2 -d: | awk '{print $1}'`
db=`cat /root/log-install.txt | grep -w "Dropbear" | cut -f2 -d: | awk '{print $1,$2}'`
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"

OhpSSH=`cat /root/log-install.txt | grep -w "OHP SSH" | cut -d: -f2 | awk '{print $1}'`
OhpDB=`cat /root/log-install.txt | grep -w "OHP DBear" | cut -d: -f2 | awk '{print $1}'`
OhpOVPN=`cat /root/log-install.txt | grep -w "OHP OpenVPN" | cut -d: -f2 | awk '{print $1}'`

clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`
clear
if [[ ! -z "${PID}" ]]; then
echo -e "${LC}=============ACCOUNT===============${NC}" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "Username    : $Login" | tee -a /etc/log-create-user.log
echo -e "Password    : $Pass" | tee -a /etc/log-create-user.log
echo -e "Expired On   : $exp" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}==============SERVER================${NC}" | tee -a /etc/log-create-user.log
echo -e " "
echo -e "Host               : $domen" | tee -a /etc/log-create-user.log
echo -e "PubKey          : $slkey" | tee -a /etc/log-create-user.log
echo -e "Nameserver  : $sldomain" | tee -a /etc/log-create-user.log
echo -e "SSHWS          : $portsshws" | tee -a /etc/log-create-user.log
echo -e "WS+SSL         : $wsssl" | tee -a /etc/log-create-user.log
echo -e "SSL/TLS         : $ssl" | tee -a /etc/log-create-user.log
echo -e "UDPGW          : 7100 - support VC" | tee -a /etc/log-create-user.log
echo -e "SSH-UDP        : 1-65535" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}=====================================${NC}"  | tee -a /etc/log-create-user.log
echo -e "${LC}========PAYLOAD WEBSOCKET==========${NC}" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "GET / HTTP/1.1[crlf]Host:$domen[crlf]Upgrade: ws[crlf][crlf]" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}====================================${NC}"  | tee -a /etc/log-create-user.log
echo -e "${LC}============PAYLOAD WS SSL==========${NC}"   | tee -a /etc/log-create-user.log
echo -e ""
echo -e "GET- CFRAY wss://[host]/ HTTP/1.1[crlf]Host:$domen[crlf]Upgrade: ws[crlf][crlf]" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}====================================${NC}"  | tee -a /etc/log-create-user.log
echo -e "BRINGAS - FAMILY"
else 

echo -e "${LC}=============ACCOUNT===============${NC}" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "Username    : $Login" | tee -a /etc/log-create-user.log
echo -e "Password    : $Pass" | tee -a /etc/log-create-user.log
echo -e "Expired On   : $exp" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}==============SERVER================${NC}" | tee -a /etc/log-create-user.log
echo -e " "
echo -e "Host               : $domen" | tee -a /etc/log-create-user.log
echo -e "PubKey          : $slkey" | tee -a /etc/log-create-user.log
echo -e "Nameserver  : $sldomain" | tee -a /etc/log-create-user.log
echo -e "SSHWS          : $portsshws" | tee -a /etc/log-create-user.log
echo -e "WS+SSL         : $wsssl" | tee -a /etc/log-create-user.log
echo -e "SSL/TLS         : $ssl" | tee -a /etc/log-create-user.log
echo -e "UDPGW          : 7100 - support VC" | tee -a /etc/log-create-user.log
echo -e "SSH-UDP        : 1-65535" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}=====================================${NC}"  | tee -a /etc/log-create-user.log
echo -e "${LC}========PAYLOAD WEBSOCKET==========${NC}" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "GET / HTTP/1.1[crlf]Host:$domen[crlf]Upgrade: ws[crlf][crlf]" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}====================================${NC}"  | tee -a /etc/log-create-user.log
echo -e "${LC}==========PAYLOAD WS SSL============${NC}"   | tee -a /etc/log-create-user.log
echo -e ""
echo -e "GET- CFRAY wss://[host]/ HTTP/1.1[crlf]Host:$domen[crlf]Upgrade: ws[crlf][crlf]" | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}====================================${NC}"  | tee -a /etc/log-create-user.log
echo -e ""
echo -e "${LC}BRINGAS - FAMILY${NC}"
fi
echo "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "[ ENTER ] To Menu"
menu
