# Use colours
G='\e[01;32m'    # GREEN
R='\e[01;31m'    # RED
Y='\e[01;33m'    # YELLOW
B='\e[01;34m'    # BLUE
V='\e[01;35m'    # VIOLET
Bl='\e[01;30m'   # BLACK
C='\e[01;36m'    # CYAN
W='\e[01;37m'    # WHITE
N='\e[00;37;40m' # NEUTRAL
banner() {
	echo -e "${G}===========================${N}"
	echo -e " ${R}MAS ADEM KOMPRES DATA${N}"
	echo -e "${G}===========================${N}"
	} 

{
clear
banner
echo -e "*${Y}OTW KOMPRES DATA${N}*"
echo""
	echo ""
#mount -o rw,remount /
sleep 0.2
#STOP
am force-stop com.lazada.android
sleep 2
#COPY
cp /data/data/com.lazada.android/files/SGMANAGER_DATA2 /data/local/tmp/SGMANAGER_DATA2
cp /data/data/com.lazada.android/shared_prefs/Alvin2.xml /data/local/tmp/Alvin2.xml

pm clear com.lazada.android
rm -r /storage/emulated/0/Android/data/*
rm -r /data/data/com.lazada.android/* 

mkdir /data/data/com.lazada.android/files/
mkdir /data/data/com.lazada.android/shared_prefs

mv /data/local/tmp/SGMANAGER_DATA2  /data/data/com.lazada.android/files/SGMANAGER_DATA2
mv /data/local/tmp//Alvin2.xml  /data/data/com.lazada.android/shared_prefs/Alvin2.xml

}