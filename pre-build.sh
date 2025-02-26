# Change building server timezone 
ln -snf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
apt update
DEBIAN_FRONTEND=noninteractive apt install tzdata -y

# Default Device Manager Website
sed -i 's/192.168.1.1/192.168.31.1/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/192.168.1.2/192.168.31.2/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/192.168.1.254/192.168.31.254/' padavan-ng/trunk/user/shared/defaults.h

# Wi-Fi Country Code
sed -i 's/UA/RU/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/UA/RU/' padavan-ng/trunk/user/shared/defaults.h

# Custom defaults Wi-Fi SSID
sed -i 's/"Padavan_2.4GHz"/BOARD_PID \"\_\%\s\"/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/"Padavan_5GHz"/BOARD_PID \"\_\%\s\_5G"/' padavan-ng/trunk/user/shared/defaults.h

sed -i 's/"Padavan_GUEST_2.4GHz"/BOARD_PID \"\_Guest_\%\s\"/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/"Padavan_GUEST_5GHz"/BOARD_PID \"\_Guest_\%\s\_5G"/' padavan-ng/trunk/user/shared/defaults.h

# Default timezone
sed -i 's/EET-2EETDST/MST-3MDT/' padavan-ng/trunk/user/shared/defaults.h

# NTP servers
sed -i 's/pool.ntp.org/ru.pool.ntp.org/' padavan-ng/trunk/user/shared/defaults.h
sed -i 's/time.in.ua/time.nist.gov/' padavan-ng/trunk/user/shared/defaults.h

# Show results
cat padavan-ng/trunk/user/shared/defaults.h
