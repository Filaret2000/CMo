#! /usr/bin/bash
#Crainiciuc Filaret-Niculai, Gr 3142A
#Compiling and binarisation
swiftc lab1.swift -o main
chmod +x main
#Preparation of input file
input_dir=$(cd `dirname $0` && pwd)
input_dir+="/$2"
#Preparation of choice alg
alg="$1"
#Timing and running
start=`date +%s%N`
./main $alg $input_dir
end=`date +%s%N`
#Removing executable file
rm main
#Variant in which the time is saved in a variable:
#timp=`echo "scale=9;(${end}-${start})/1000000000" | bc`
#echo $timp
#Output
echo `echo "scale=9;(${end}-${start})/1000000000" | bc`
