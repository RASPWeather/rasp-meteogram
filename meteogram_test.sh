#!/bin/sh
HOME_DIR=/home/rasp3/GM/rasp-meteogram

# -n removes proceeding print statement (0) - enumeration
# -P creates a profile file to see where it may be slow
# -p removes any pagination

if [ "$1" != "" ]; then
	PLOT_DOMAIN=$1
	export PLOT_DOMAIN=$1
	export SITE_DATA=./sitedata.ncl
	echo "Using region:$PLOT_DOMAIN"
	echo "Using site data file:$SITE_DATA"

	#Or use: /usr/bin/ncl -n -p 'DOMAIN="YOUR_DOMAIN"' $HOME_DIR/meteogram.ncl
	/usr/bin/ncl -n -p $HOME_DIR/meteogram.ncl
else
	echo "Provide a region to process, e.g. UK12+1"
fi
