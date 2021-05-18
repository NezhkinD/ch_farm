#Unlock plots
groupadd rootgroup
gpasswd -a "$SUDO_USER" rootgroup

chown -R "$SUDO_USER":rootgroup ./plots
chmod 775 ./plots

#Stop miner
killall 'hpool-miner-chia'

#Start miner
nohup ./1.3.0-5/hpool-miner-chia &
