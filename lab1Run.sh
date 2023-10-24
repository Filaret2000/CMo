#! /usr/bin/bash
#Crainiciuc Filaret-Niculai, Gr 3142A
echo "--------------------Laborator 1--------------------" > output.txt
echo "----Insertion sort----------------Selection sort---" >> output.txt
#
variable=$(./algsRun.sh "insertion" "input2000.txt")
printf "%s" "------$variable--------------------" >> output.txt
variable=$(./algsRun.sh "selection" "input2000.txt")
printf "%s\n" "$variable-----" >> output.txt
#
variable=$(./algsRun.sh "insertion" "input5000.txt")
printf "%s" "-----$variable--------------------" >> output.txt
variable=$(./algsRun.sh "selection" "input5000.txt")
printf "%s\n" "$variable-----" >> output.txt
#
variable=$(./algsRun.sh "insertion" "input10000.txt")
printf "%s" "----$variable--------------------" >> output.txt
variable=$(./algsRun.sh "selection" "input10000.txt")
printf "%s" "$variable-----" >> output.txt
