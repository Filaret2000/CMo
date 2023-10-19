#! /usr/bin/bash
swiftc lab1.swift -o main
chmod +x main
./main
date +%s
rm main
