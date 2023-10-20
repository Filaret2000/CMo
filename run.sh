#! /usr/bin/bash
swiftc lab1.swift -o main
chmod +x main
start=`date +%s%N`
./main
end=`date +%s%N`
rm main
#Varianta in care se memoreaza valoarea intr-o variabila:
#timp=`echo "scale=9;(${end}-${start})/1000000000" | bc`
#echo $timp
echo `echo "scale=9;(${end}-${start})/1000000000" | bc`
