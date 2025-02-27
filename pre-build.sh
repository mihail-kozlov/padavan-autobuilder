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

# Footer Modding
sed -i "/Hadzhioglu/ a \	footer_code +='  <span>Firmware compiled by Mikhail Kozlov</span></br>\\x5C\\x6E\\';" padavan-ng/trunk/user/www/n56u_ribbon_fixed/state.js
grep -C 1 "Firmware compiled" padavan-ng/trunk/user/www/n56u_ribbon_fixed/state.js

# Wi-Fi Country Code
sed -i 's/UA/RU/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/UA/RU/' padavan-ng/trunk/user/shared/defaults.h

# Custom defaults Wi-Fi SSID
sed -i 's/"Padavan_2.4GHz"/"Xiaomi_2.4G"/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/"Padavan_5GHz"/"Xiaomi_5G"/' padavan-ng/trunk/user/shared/defaults.h

sed -i 's/"Padavan_GUEST_2.4GHz"/"Xiaomi_Guest"/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/"Padavan_GUEST_5GHz"/"Xiaomi_Guest_5G"/' padavan-ng/trunk/user/shared/defaults.h

# Default timezone
sed -i 's/EET-2EETDST/UTC-3/' padavan-ng/trunk/user/shared/defaults.h

# NTP servers
sed -i 's/pool.ntp.org/ru.pool.ntp.org/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/time.in.ua/time.nist.gov/' padavan-ng/trunk/user/shared/defaults.h

# Show results
cat padavan-ng/trunk/user/shared/defaults.h
