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
cp -vp main.css padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/
cp -vp bootstrap.min.css padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/
cp -vp state.js padavan-ng/trunk/user/www/n56u_ribbon_fixed/
cp -vp favicon.ico padavan-ng/trunk/user/www/n56u_ribbon_fixed/images/favicon.ico
cp -vp favicon.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/images/favicon.png

cp -vp bg_body.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/

cp -vp miwifi_logo.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/
rm -f padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/padavan_logo.png 

cp -vp itoggle.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/
sed -i 's/width: 59px/width: 61px/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/engage.itoggle.css

# Logo format
sed -i "s^\<center\>\<div id=\"logo\"\>\</div\>\</center\>^\<left\>\<div id=\"logo\"\>\</div\>\</left\>^" padavan-ng/trunk/user/www/n56u_ribbon_fixed/*.asp

# Router Mode
sed -i 's/n56u.png/router_r1cm.png/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_OperationMode_Content.asp
sed -i 's/globe.png/internet.png/' padavan-ng/trunk/user/www/n56u_ribbon_fixed/Advanced_OperationMode_Content.asp
cp -vp clients.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
cp -vp router_r1cm.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
cp -vp internet.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
cp -vp server.png padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/
rm -f padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/n56u.gif
rm -f padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/n56u.png
rm -f padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/wl_device/globe.png

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

# Rename
mv "padavan-ng/trunk/configs/boards/XIAOMI/MI-MINI" "padavan-ng/trunk/configs/boards/XIAOMI/MiWiFi-mini"
ls padavan-ng/trunk/configs/boards/XIAOMI/
