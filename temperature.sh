#info=$(sensors | gawk '{ print $2 }' | sed -n "17p" | sed 's/....$//' | cut -c 2-)
#if [ $info -lt $(cat ~/.scripts/.temp) ] ; then
#	bash ~/.scripts/temperature.sh
#else
#	killall -s 9 -u v minerd
#fi
#sensors | gawk '{ print $2 }' | sed -n "17p" | sed 's/....$//' | cut     -c 2- > file
do
	info=$(sensors | gawk '{ print $2 }' | sed -n "17p" | sed 's/....$//' | cut -c 2-)
	if [ $info -gt 95 ] ; then
	zenity --info --text="Temperature too high, shutting down miner."
	killall -s 9 -u v minerd
	break
	fi
done
