#!/bin/sh

UPLOADEDFILE=$1

echo "$(date) Uploaded $1" >> /var/log/uploads.log

/dropbox_upload.sh $UPLOADEDFILE >> /var/log/uploads.log && rm $UPLOADEDFILE

echo "$(date) $1 done."

