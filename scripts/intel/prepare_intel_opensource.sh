#!/bin/sh
COMMANDS=(
	"apt-get update"
	"apt-get install -d xserver-xorg-video-intel -y --allow-downgrades"
	"overlayroot-enable"
)    

for cmd in "${COMMANDS[@]}"
do
    command ${cmd};

    if [ $? != 0 ]; then
        echo "### Failed in command '${cmd}'"
        exit 1;
    fi
done
