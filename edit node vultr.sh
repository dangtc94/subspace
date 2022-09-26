sudo systemctl stop subspaced
sudo systemctl stop subspaced-farmer


nano /etc/systemd/system/subspaced-farmer.service
 
systemctl daemon-reload	
rm -rf ~/.local/share/subspace*
sudo systemctl restart subspaced
sudo systemctl restart subspaced-farmer

#you can check which port you are using by this command
lsof -i -P -n | grep LISTEN

docker compose logs -f --tail=100

 
wget -O subspace.sh https://bitbucket.org/dieuts/subspace/raw/master/subspace.sh && chmod +x subspace.sh && ./subspace.sh

wget -O subspace.sh https://bitbucket.org/dieuts/subspace/raw/master/tools/generate_subspace_wallet_subkey.sh && chmod +x subspace.sh && ./subspace.sh

sudo passwd root
sudo nano /etc/ssh/sshd_config

#PermitRootLogin without-password
PermitRootLogin yes

sudo service ssh reload