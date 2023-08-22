
git clone https://github.com/EddieKidiw/HMSC
#cd HMSC
CPU=$(lscpu | grep -oP 'Architecture:\s*\K.+')
phpver=$(php -v | head -n 1 | cut -d " " -f 2 | cut -f1-2 -d".")
echo ""
echo "Architecture: $CPU"
echo "PHP version: $phpver"
path=$(pwd)
cp ${path}/HMSC/Linux/Termux/${CPU}/php${phpver}/nts/hmsc.so /data/data/com.termux/files/usr/lib/php/hmsc.so
echo "zend_extension=hmsc.so" > /data/data/com.termux/files/usr/lib/php.ini
php -i | grep hmsc
