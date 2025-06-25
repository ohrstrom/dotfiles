#!/bin/bash

IMAGE_PATH=~/jonas@pbi.io\ -\ Google\ Drive/My\ Drive/Jonas/access/VAULT.dmg

echo "mount $IMAGE_PATH"
hdiutil mount "$IMAGE_PATH"
