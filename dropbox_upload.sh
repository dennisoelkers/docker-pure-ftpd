#!/bin/sh

FILE=$1
BASEFILE=`basename $FILE`

curl -q -X POST https://content.dropboxapi.com/2/files/upload --header "Authorization: Bearer ${DROPBOX_TOKEN}" --header "Dropbox-API-Arg: {\"path\": \"/${BASEFILE}\"}" --header "Content-Type: application/octet-stream" --data-binary @$FILE

