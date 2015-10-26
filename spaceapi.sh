#!/bin/bash
API_KEY="REDACTED"
ENDPOINT_SET_URL="http://spaceapi.osaa.dk/sensor/set"

ARG_OPEN="--data-urlencode sensors={\"state\":{\"open\":true}}"
ARG_CLOSE="--data-urlencode sensors={\"state\":{\"open\":false}}"
ARG_KEY="--data key=$API_KEY"

if [ $# -ne 1 ]
then
    echo "usage: $(basename $0) <open/close>"
    exit 1
fi

if [ "$1" == "open" ]
then
    echo "Marking the space as open"
    curl $ARG_OPEN $ARG_KEY $ENDPOINT_SET_URL
    echo "The space is open!"
    exit 0
elif [ "$1" == "close" ]
then
    echo "Marking the space as closed"
    curl $ARG_CLOSE $ARG_KEY $ENDPOINT_SET_URL
    echo "The space is closed!"
    exit 0
else
    echo "input not recognized.."
    echo "usage: $(basename $0) <open/close>"
    exit 1
fi
