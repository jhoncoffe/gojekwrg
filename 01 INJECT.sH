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
	echo -e " ${R}MAS ADEM INJEK LAZADA${N}"
	echo -e "${G}===========================${N}"
	} 

{
clear
banner
echo -e "*${Y}INJEK VOUCER${N}*"
echo""
	echo ""
#mount -o rw,remount /
sleep 0.2
#modpeson
settings put global airplane_mode_on 1
am broadcast -a android.intent.action.AIRPLANE_MODE
#del
am force-stop com.lazada.android
pm clear com.lazada.android
rm -r /storage/emulated/0/Android/data/*
rm -r /data/data/com.lazada.android/*
mkdir /data/data/com.lazada.android/shared_prefs
sleep 1
#restore
IFS='
'
for file in `ls /storage/emulated/0/00_INJECT_VOCER/config/ -tr1q|tail -n1`; do
  echo $file
mv '/storage/emulated/0/00_INJECT_VOCER/config/'$file /data/data/com.lazada.android/shared_prefs/Alvin2.xml
done

#modpesoff
settings put global airplane_mode_on 0
am broadcast -a android.intent.action.AIRPLANE_MODE


}