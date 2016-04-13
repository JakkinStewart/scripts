if [ ! -d "/home/$USER/.aur" ]; then
mkdir /home/$USER/.aur
mkdir /home/$USER/.aur/backups
mkdir /home/$USER/.aur/aur
fi
cd /home/$USER/.aur/aur
cower -udd
ls -d */ > /home/$USER/.aur/folders.txt 
cd /home/$USER/.aur/backups
ls -d */ > /home/$USER/.aur/backups.txt
diff /home/$USER/.aur/aur/ /home/$USER/.aur/backups/ | grep "Only in aur" | awk '{ print $4 }' | sed 's%^%cp /home/$USER/.aur/%' | sed 's%$% /home/$USER/.aur/backups/%' > /home/$USER/.aur/backup.sh
find /home/$USER/.aur/aur | grep PKGBUILD | sed 's/^/vim /' > /home/$USER/.aur/aur.sh
sh /home/$USER/.aur/aur.sh
cp -r /home/$USER/.aur/aur/* /home/$USER/.aur/backups
find /home/$USER/.aur/aur | grep -i pkgbuild | sed 's/^/makepkg -si /' > /home/$USER/.aur/prep.sh

