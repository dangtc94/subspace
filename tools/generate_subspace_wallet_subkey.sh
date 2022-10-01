  GNU nano 4.8                                                                          gen-wallets.sh
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
done > rewardaddress-phrases.txt
x=1
while [ $x -le $noofwallet ]
do
  #echo "account $x:"
  echo $(sed $((8*$x))'!d' number_of_wallets.txt)
  #echo -e "\n"
  x=$(( $x + 1 ))
done > rewardaddress.txt
v1="SS58 Address:"
v2=" "
v3=""
sed -i "s/$v1/$v3/" rewardaddress.txt
sed -i "s/$v2/$v3/" rewardaddress.txt