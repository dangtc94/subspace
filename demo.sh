#!/bin/bash

codeUrl=37e06d20dcdb47e02704c485be762713231e69bb

if exists wget; then
	echo ''
else
  sudo apt update && sudo apt install wget -y < "/dev/null"
fi

for i in 1 2
do
  cd $HOME
	mkdir node$i
	cd node$i
	wget -O .env https://bitbucket.org/dieuts/subspace/raw/$codeUrl/n$i
	sleep 2
done