#!/usr/bin/env bash

	local MINER_CONFIG="/hive/miners/custom/abelianminer/abelianminer.conf"
	mkfile_from_symlink $MINER_CONFIG

	#put default config settings
	#\n--farm-recheck 2000
	echo -e "--report-hashrate --api-port 5555" > $MINER_CONFIG
	echo -e "--HWMON 1" >> $MINER_CONFIG
	local url=$CUSTOM_TEMPLATE
	[[ ! -z $CUSTOM_PASS ]] && url+=":"$CUSTOM_PASS
	url+="@"$CUSTOM_URL
	echo "-P stratums://$url" >> $MINER_CONFIG

	echo "$CUSTOM_USER_CONFIG" >> $MINER_CONFIG

