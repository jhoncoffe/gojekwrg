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
	echo -e " ${R}HAPUS DATA ONLY${N}"
	echo -e "${G}===========================${N}"
	} 

{
clear
banner
echo -e "*${Y}HAPUS DATA${N}*"
echo""
	echo ""
#mount -o rw,remount /
sleep 0.2
#del
am force-stop com.lazada.android
pm clear com.lazada.android
rm -r /storage/emulated/0/Android/data/*
rm -r /data/data/com.lazada.android/*

sleep 1

}