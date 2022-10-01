#!/bin/bash

# startupxrdp.sh located in /home directory

file_name=startxrdp
file_location=/home/$file_name.sh
if [ -e $file_location ]; then
  echo "File $file_name.sh already exists!"
else
  cat > $file_location <<EOF
#!/bin/bash
/etc/init.d/xrdp start
EOF
fi
yes | apt-get update
yes | apt upgrade && apt-get install xrdp xfce4 xfce4-goodies
yes | apt-get update
yes | apt upgrade
#echo 'update good'
cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession
#echo 'xsession update good'
sed -i 's/^test/#test/g' /etc/xrdp/startwm.sh
sed -i 's/^exec/#exec/g' /etc/xrdp/startwm.sh
sed -i -e '$a\#xrdp' /etc/xrdp/startwm.sh
sed -i -e '$a\startxfce4' /etc/xrdp/startwm.sh
#echo 'startwm.sh good'

echo '______MOVE TO /home directory before running startxrdp.sh'
