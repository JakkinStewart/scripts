var=`echo $1 | tr "." " " | gawk '{print $2}'`

scripts='$HOME/scripts'

if [[ $var == 'java' ]]; then

	$scripts/vimj $1

elif [[ $var = 'py' ]]; then

	$scripts/vimpy $1

elif [[ $var = 'sh' ]] || [[ $var = 'bash' ]]; then

	$scripts/vimsh $1

elif [[ $var = 'c' ]]; then

	$scripts/vimc.sh $1

else

	/usr/bin/vim $1

fi
