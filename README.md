# Backup2WebDAV

A simple container which creates an archive of the folder mounted to `/backup` and uploads it to the given WebDAV server.

## Usage

1. Mount whatever you want to backup to `/backup`
2. Run the container with the following ENV Vars:
 - `WEBDAV_USERNAME` - The name of your WebDAV user
 - `WEBDAV_PASSWORD` - The password of your WebDAV user
 - `WEBDAV_URL` - The URL of your WebDAV server
 - `WEBDAV_PATH` - The path on your WebDAV server where to save the archive

 **Example:**
 ```sh
 docker run -v ./backup:/backup:ro \
   -e WEBDAV_USERNAME=johndoe \
   -e WEBDAV_PASSWORD=password123 \
   -e WEBDAV_URL webdav.example.com \
   -e /backups ghcr.io/Nicklas2751/backup2webdav:latest
 ```