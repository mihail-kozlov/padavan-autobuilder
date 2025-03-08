# Change building server timezone 
ln -snf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
apt update
DEBIAN_FRONTEND=noninteractive apt install tzdata -y

# Default Device Manager Website
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/192.168.1.2/192.168.31.2/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/192.168.1.254/192.168.31.254/' padavan-ng/trunk/user/shared/defaults.h

sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_APLAN_Content.asp
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_LAN_Content.asp
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_SettingBackup_Content.asp
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Restarting.asp
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/www/dict/EN.footer
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/www/dict/RU.dict

sed -i 's/my.router/miwifi.com/' padavan-ng/trunk/user/rc/net_wan.c
sed -i 's/my.router/miwifi.com/' padavan-ng/trunk/user/scripts/mtd_storage.sh
sed -i 's/my.router/miwifi.com/' padavan-ng/trunk/user/httpd/https-cert.sh
sed -i 's/my.router/miwifi.com/g' padavan-themes-main/jquery.js

# Change default theme like Xiaomi
sed -i 's/width: 150px/width: 210px/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/main.css
sed -i 's/height: 71px/height: 58px/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/main.css
sed -i 's/#181818/#1782dd/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/main.css
sed -i 's/padavan_logo/miwifi_logo/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/main.css
cp favicon.ico padavan-ng/trunk/user/www/n56u_ribbon_fixed/images/favicon.ico
cp miwifi_logo.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/
rm padavan_logo.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/
cp itoggle.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/
sed -i 's/width: 59px/width: 61px/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/engage.itoggle.css

# Logo format
sed -i 's!<center><div id="logo"><\/div><\/center>!<left><div id="logo"><\/div><\/left>!' padavan-ng/trunk/user/www/n56u_ribbon_fixed/*.asp

# Router Mode
sed -i 's/n56u.png/router_r1cm.png/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_OperationMode_Content.asp
sed -i 's/globe.png/internet.png/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_OperationMode_Content.asp
cp clients.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
cp router_r1cm.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
cp internet.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
cp *.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/

# Footer Modding
sed -i "s/Firmware distribution is prohibited/Compiled by Mikhail Kozlov. Firmware distribution is prohibited/" padavan-ng/trunk/user/www/n56u_ribbon_fixed/state.js
echo "<--------------------------------------------------------------------------------->"
grep -C 1 "Compiled" padavan-ng/trunk/user/www/n56u_ribbon_fixed/state.js
echo "<--------------------------------------------------------------------------------->"

# Wi-Fi Country Code
sed -i 's/UA/RU/g' padavan-ng/trunk/user/shared/defaults.h

# Custom defaults Wi-Fi SSID
sed -i 's/"Padavan_2.4GHz"/"Xiaomi_2.4G"/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/"Padavan_5GHz"/"Xiaomi_5G"/' padavan-ng/trunk/user/shared/defaults.h

sed -i 's/"Padavan_GUEST_2.4GHz"/"Xiaomi_Guest"/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/"Padavan_GUEST_5GHz"/"Xiaomi_Guest_5G"/' padavan-ng/trunk/user/shared/defaults.h

sed -i 's/"lan_domain", ""/"lan_domain", "miwifi.com"/' padavan-ng/trunk/user/shared/defaults.c

# Default timezone
sed -i 's/EET-2EETDST/UTC-3/' padavan-ng/trunk/user/shared/defaults.h

# NTP servers
sed -i 's/pool.ntp.org/ru.pool.ntp.org/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/time.in.ua/time.nist.gov/' padavan-ng/trunk/user/shared/defaults.h

# Show results
echo "<--------------------------------------------------------------------------------->"
cat padavan-ng/trunk/user/shared/defaults.h
echo "<--------------------------------------------------------------------------------->"

# Rename
mv "padavan-ng/trunk/configs/boards/XIAOMI/MI-MINI" "padavan-ng/trunk/configs/boards/XIAOMI/MiWiFi-mini"
ls padavan-ng/trunk/configs/boards/XIAOMI/
