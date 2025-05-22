#!/bin/sh 
 for i in `find dts.dtb.*`; do 
 ./bin/dtc -I dts -O dtb -@ -o $i.dtb $i 
 mv $i.dtb dtb.$i 
 done 
 #rm -rf dts.dtb.* 
 ./bin/mkdtimg create dtbo_new.img dtb.dts.dtb.* 
 rm -rf dtb.dts.dtb.*