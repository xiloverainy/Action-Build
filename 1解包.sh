#!/bin/sh 
 # BY Shenlhz 
   ./bin/mkdtimg dump dtbo.img -b dtb 
 for i in `find dtb.*`; do 
 ./bin/dtc -I dtb -O dts -@ $i -o $i.dts 
 mv $i.dts dts.$i 
 done 
rm -rf dtb.*