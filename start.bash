#Unlock plots
groupadd rootgroup
gpasswd -a "$SUDO_USER" rootgroup

chown -R "$SUDO_USER":rootgroup ./plots
chmod 775 ./plots

#Start miner
./hpool-miner-chia