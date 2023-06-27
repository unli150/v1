#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e "=========================="
echo -e "             PROSES DOWNLOAD         " | lolcat
echo -e "=========================="
sleep 6
# hapus data
rm -rf set-br
rm -rf menu-bckp
rm -rf menu-backup
rm -rf backup
rm -rf restore
rm -rf menu
rm -rf slowdns
rm -rf menu-vless
####### DOWNLOAD ULANG ########
# menu
wget -O menu "https://raw.githubusercontent.com/unli150/v1/main/menu/menu.sh"
wget -O menu-trial "https://raw.githubusercontent.com/Fikripps/Ver3/main/menu/menu-trial.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-vmess.sh"
wget -O menu-vless "https://raw.githubusercontent.com/unli150/v1/main/menu-vless.sh"
wget -O running "https://raw.githubusercontent.com/unli150/v1/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/Fikripps/Ver3/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-trgo.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-trojan.sh"
# menu ssh ovpn
wget -O menu-sshh "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-sshh.sh"
wget -O usernew "https://raw.githubusercontent.com/unli150/v1/main/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/unli150/v1/main/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/unli150/v1/main/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/unli150/v1/main/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/unli150/v1/main/ssh/cek.sh"
wget -O member "https://raw.githubusercontent.com/unli150/v1/main/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/unli150/v1/main/ssh/delete.sh"
wget -O autokilll "https://raw.githubusercontent.com/unli150/v1/main/ssh/autokilll.sh"
wget -O ceklim "https://raw.githubusercontent.com/unli150/v1/main/ssh/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/unli150/v1/main/ssh/tendang.sh"
wget -O user-lock "https://raw.githubusercontent.com/unli150/v1/main/ssh/user-lock.sh"
wget -O user-unlock "https://raw.githubusercontent.com/unli150/v1/main/ssh/user-unlock.sh"
# menu system
wget -O menu-set "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-set.sh"
wget -O menu-domain "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/unli150/v1/main/ssh/add-host.sh"
wget -O port-change "https://raw.githubusercontent.com/unli150/v1/main/port/port-change.sh"
wget -O certv2ray "https://raw.githubusercontent.com/unli150/v1/main/xray/certv2ray.sh"
wget -O menu-webmin "https://raw.githubusercontent.com/unli150/v1/main/menu/menu-webmin.sh"
wget -O speedtest "https://raw.githubusercontent.com/unli150/v1/main/ssh/speedtest_cli.py"
##############
wget -O port-ssl "https://raw.githubusercontent.com/unli150/v1/main/port/port-ssl.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/unli150/v1/main/port/port-ovpn.sh"
wget -O xp "https://raw.githubusercontent.com/unli150/v1/main/ssh/xp.sh"
wget -O acs-set "https://raw.githubusercontent.com/unli150/v1/main/acs-set.sh"
wget -O sshws "https://raw.githubusercontent.com/unli150/v1/main/ssh/sshws.sh"
wget -O status "https://raw.githubusercontent.com/unli150/v1/main/status.sh"
wget -O menu-backup "https://raw.githubusercontent.com/unli150/v1/main/backup/menu-backup.sh"
wget -O backup "https://raw.githubusercontent.com/unli150/v1/main/backup/backup.sh"
wget -O restore "https://raw.githubusercontent.com/unli150/v1/main/backup/restore.sh"
wget -O jam "https://raw.githubusercontent.com/unli150/v1/main/jam.sh"
wget -O update "https://raw.githubusercontent.com/unli150/v1/main/update.sh"
########## CHMOD ###########
chmod +x menu
chmod +x menu-trial
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
chmod +x user-lock
chmod +x user-unlock
chmod +x menu-sshh
chmod +x usernew
chmod +x trial
chmod +x renew
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokilll
chmod +x ceklim
chmod +x tendang
chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restarts
chmod +x bw
chmod +x port-ssl
chmod +x port-ovpn
chmod +x xp
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-backup
chmod +x backup
chmod +x restore
chmod +x jam
chmod +x update
menu