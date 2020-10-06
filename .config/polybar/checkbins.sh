#!/bin/bash
sleep 1m

BINMESSAGE="TAKE OUT BINS!"
CURRDATE=$(date -d "+1 day" '+%d %b')
DOMOBJECT=$(curl -s 'https://inzamelkalender.gad.nl/adres/1404ES:6:A' | grep -B 1 "Restafval, minicontainers" | grep date)
PICKUPDAY=$(echo $DOMOBJECT | cut -d' ' -f3)
PICKUPMONTH=$(echo $DOMOBJECT | cut -d' ' -f4 | cut -d'<' -f1)

# Check length of Pickupday to ensure it's not a single digit, add leading 0 if so, to match Date
if [ "${#PICKUPDAY}" == 1 ]
then
	PICKUPDAY="0$PICKUPDAY"
fi

PICKUPDATE="$PICKUPDAY $PICKUPMONTH"

if [ "$CURRDATE" == "$PICKUPDATE" ]
then
	echo "$BINMESSAGE"
fi
