#!/bin/sh

IMP_DEVICE=YourDeviceId
AGENT_URL=https://agent.electricimp.com/${IMP_DEVICE}

while :
do
    # read a key
    read -t 1 -n 1 key

    # turn to the right
    if [[ $key = d ]]
    then
        curl ${AGENT_URL}?pins=1
    fi

    # turn to the left
    if [[ $key = a ]]
    then
        curl ${AGENT_URL}?pins=2
    fi

    # forward
    if [[ $key = w ]]
    then
        curl ${AGENT_URL}?pins=3
    fi

    # full stop
    if [[ $key = s ]]
    then
        curl ${AGENT_URL}?pins=0
    fi
done
