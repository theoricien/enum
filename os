#!/bin/bash

cyan='\033[1;32m'
red='\033[1;31m'
yellow='\033[0;33m'
none='\033[0m'

mkdir os 2>/dev/null

touch ./os/os
ttl=""
echo -e "${cyan}==========( OS Information )==========" 2>&1 | tee -a ./os/os
echo -e "${red}ping -c 1 $1 | grep \"64 bytes\" | awk '{printf \$6}'" 2>&1 | tee -a ./os/os

while test "$ttl" = ""
do
	ttl=$(ping -c 1 $1 | grep "64 bytes" | awk '{printf $6}')
	if [[ "$ttl" == "" ]]
	then
		echo "Ping timeout.."
		sleep 1
	fi
done

echo -e "${yellow}" 2>&1 | tee -a ./os/os
echo -e ")> Time To Live value: $ttl" 2>&1 | tee -a ./os/os

echo -en "We are on " 2>&1 | tee -a ./os/os
if [[ "$ttl" == "ttl=63" ]]; then
	echo -e "${cyan}Linux based OS" 2>&1 | tee -a ./os/os
else
	echo -e "${cyan}Windows" 2>&1 | tee -a ./os/os
fi
echo -e "${none}" 2>&1 | tee -a ./os/os
