#!/bin/bash
#set -xe

URL=""

CURL=$(curl -I 'https://www.zotero.org/download/client/dl?platform=linux-x86_64&channel=beta' | grep -i "^location:" | awk '{print $2}')

echo $CURL

echo $URL
