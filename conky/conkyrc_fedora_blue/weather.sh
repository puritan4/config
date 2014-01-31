#!/bin/sh
#AccuWeather (r) RSS weather tool for conky
#
#USAGE: weather.sh <locationcode>
#
#(c) Michael Seiler 2007

METRIC=0 #Should be 0 or 1; 0 for F, 1 for C
LOCCOD="NAM|US|VA|22015"  # Example: OCN|AU|VIC|MELBOURNE

if [ -z $1 ] && [ -x $LOCCOD ] ; then
        echo
        echo "USAGE: $0 [locationcode]"
        echo
        exit 0;
elif [ ! -z $1 ] ; then
        LOCCOD=$1
fi

#curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$LOCCOD | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'
F=`curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=0\&locCode\=$LOCCOD | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'`
C=`curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=1\&locCode\=$LOCCOD | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'`

C_TEMP=`echo $C | cut -d':' -f 2`

echo "$F/${C_TEMP//[[:blank:]]/}"
