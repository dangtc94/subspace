#!/bin/bash
echo -e "Number of wallets (>=1): " 
read noofwallet
x=1
while [ $x -le $noofwallet ]
do
  echo "account $x:"
  subkey generate -n subspace_testnet
  #echo -e "\n"
  x=$(( $x + 1 ))
done > number_of_wallets.txt

while [ $x -le $noofwallet ]
do
  #echo "account $x:"
  echo sed 8*$x'!d' number_of_wallets.txt 
  #echo -e "\n"
  x=$(( $x + 1 ))
done #> res.txt
#v1="SS58 Address:"
#v2=" "
#v3=""
#sed -i "s/$v1/$v3/" res.txt
#sed -i "s/$v2/$v3/" res.txt