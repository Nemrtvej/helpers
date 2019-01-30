#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
MAC_ADDR="to-be-redefined-in-config-ini"
source ${DIR}/config.ini
CARD_INDEX=$(pactl list short cards | grep ${MAC_ADDR} | awk '{ print $1 }')
PROFILE_INDEX=$(expr 1 + ${CARD_INDEX})
CURRENT_PROFILE=$(pactl list cards | grep -i "Active Profile" | sed "${PROFILE_INDEX}q;d" | awk '{print $3}')

PROFILE_A2DP="a2dp_sink"
PROFILE_HSP="headset_head_unit"

if [[ "${CURRENT_PROFILE}" = "$PROFILE_A2DP" ]];
    then
	echo "Setting to HSP"
        pacmd set-card-profile ${CARD_INDEX} ${PROFILE_HSP}
    else
	echo "Setting to A2DP"
        pacmd set-card-profile ${CARD_INDEX} ${PROFILE_A2DP}
fi




