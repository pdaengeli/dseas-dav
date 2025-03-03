# Apache WebDAV

This image is based on [`docker-apachewebdav`](https://github.com/mgutt/docker-apachewebdav) by mgutt.

## Configuration

Two settings are required for proper functioning:

* path to webdav share
  * expected under `/var/lib/dav/data`
  * mount shared data volume as `/data/webdav:/var/lib/dav/data`
* users/password
  * expected in `/user.passwd`
  * use `htpasswd -B /user.passwd name-of-the-user` (password will be queried interactively)
