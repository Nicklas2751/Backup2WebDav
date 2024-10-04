#!/bin/sh
archive=/tmp/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz

echo "Creating backup archive $archive"
tar czvf $archive /backup

echo "Uploading $archive to $WEBDAV_URL/$WEBDAV_PATH/"
curl -T $archive -u $WEBDAV_USERNAME:$WEBDAV_PASSWORD $WEBDAV_URL/$WEBDAV_PATH/
echo "Finished"