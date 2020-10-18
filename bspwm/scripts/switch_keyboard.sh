current=`setxkbmap -query | grep layout | awk '{print $2}'`
if [[ "$current" == "us" ]]
then
	setxkbmap ir
elif [[ "$current" == "ir" ]]
then
	setxkbmap us
else
	setxkbmap us
fi

