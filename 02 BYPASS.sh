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
        echo -e "${G}==========================================${N}"
        echo -e "         ${R}T E B E T A B I E S ${N}"
  echo -e ""
  echo -e "bypass Verif janda created by NS"
echo -e "tolong hargai untuk tidak merubah bagian ini"
  echo -e ""
        echo -e "${G}==========================================${N}"
        } 



            
customemodul() {
                     echo $(head -3 /dev/urandom | tr -cd 'A-Z' | cut -c -4)
                     } 
propcustome() {
                     echo TB1A.$(head -3 /dev/urandom | tr -cd '123456789' | cut -c -6).$(head -3 /dev/urandom | tr -cd '0123456789' | cut -c -3)
                     }            

verifjanda() {
		clear
	banner
echo -e "       *${Y}Jalan mudah menuju Crott${N}*"
echo""
            echo ""
        mount -o rw,remount /
        sleep 0.2
        echo "_______________Membuat kopi____________"
    	sleep 1   
	   # d
		sed -i '/ro.product.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
		sed -i '/ro.product.system.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
		sed -i '/ro.product.vendor.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
		sed -i '/ro.product.product.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
		sed -i '/ro.product.product.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
		sed -i '/ro.product.odm.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
        sed -i '/ro.product.system_ext.brand=/d' /data/adb/modules/MagiskHidePropsConf/system.prop
        
		# Tulis ro. di txt
		echo "_____________Menambahkan gula_________"
		sleep 5
        
		#clonebrand
		echo -e "ro.product.system.brand=$(customemodul)" >> /data/local/tmp/build.txt
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/local/tmp/system2.txt
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/local/tmp/systemext.txt
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/local/tmp/vendor2.txt
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/local/tmp/odm.txt
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/local/tmp/product.txt
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/local/tmp/vendor.txt
		#rename
		sed -i 's/ro.product.system.brand=/ro.product.brand=/' /data/local/tmp/system2.txt
		sed -i 's/ro.product.system.brand=/ro.product.vendor.brand=/' /data/local/tmp/systemext.txt
		sed -i 's/ro.product.system.brand=/ro.product.product.brand=/' /data/local/tmp/vendor2.txt
		sed -i 's/ro.product.system.brand=/ro.product.odm.brand=/' /data/local/tmp/odm.txt
		sed -i 's/ro.product.system.brand=/ro.product.system_ext.brand=/' /data/local/tmp/product.txt
		#kembalikan
		grep -i "ro.product.brand=/*" /data/local/tmp/system2.txt >> /data/local/tmp/build.txt
		grep -i "ro.product.vendor.brand=/*" /data/local/tmp/systemext.txt >> /data/local/tmp/build.txt
		grep -i "ro.product.product.brand=/*" /data/local/tmp/vendor2.txt >> /data/local/tmp/build.txt
		grep -i "ro.product.odm.brand=/*" /data/local/tmp/odm.txt >> /data/local/tmp/build.txt
		grep -i "ro.product.system_ext.brand=/*" /data/local/tmp/product.txt >> /data/local/tmp/build.txt
		
		
        # Copy ro. ke hideprop
		echo "__________________success______________"
		sleep 1
		#brand
		grep -i "ro.product.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		grep -i "ro.product.system.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		grep -i "ro.product.vendor.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		grep -i "ro.product.product.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		grep -i "ro.product.product.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		grep -i "ro.product.odm.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		grep -i "ro.product.system_ext.brand=/*" /data/local/tmp/build.txt >> /data/adb/modules/MagiskHidePropsConf/system.prop
		
        sleep 0.2
		echo "reboot the device to continues"
		sleep 5
        echo ""
		sleep 1
		echo ""
		sleep 1
		rm -f /data/local/tmp/build.txt
		rm -f /data/local/tmp/system2.txt
		rm -f /data/local/tmp/vendor.txt
		rm -f /data/local/tmp/vendor2.txt
		rm -f /data/local/tmp/systemext.txt
		rm -f /data/local/tmp/product.txt
		rm -f /data/local/tmp/odm.txt
		
        mount -o ro,remount /
		clear
		}
		
		

        verifjanda
		
reboot 5s


