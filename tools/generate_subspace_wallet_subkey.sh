#!/bin/bash
echo -e "Number of wallets (>=1): " 
read noofwallet
x=1
while [ $x -le $noofwallet ]
do
  echo "account $x:"
  subkey generate -n subspace_testnet
  echo -e "\n"
  x=$(( $x + 1 ))
done > number_of_wallets.txt
