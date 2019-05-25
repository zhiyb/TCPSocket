#! /bin/bash

host="example.com:60000"

execute()
{
	echo "Log"
	for ((i=0;i<100;i++)); do
		if (($RANDOM % 2)); then
			echo -n "s1 "
		else
			echo -n "s2 "
		fi
		echo "$RANDOM $RANDOM $RANDOM"
		sleep 1
	done
	echo
	echo
}

execute | socat - TCP:$host
