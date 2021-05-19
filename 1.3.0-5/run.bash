#Unlock plots
groupadd rootgroup
gpasswd -a "$SUDO_USER" rootgroup

chown -R "$SUDO_USER":rootgroup ./../plots
chmod 775 ./../plots

killall 'hpool-miner-chia'

nohup ./hpool-miner-chia &