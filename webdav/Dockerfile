# Use the apachewebdav image from Docker Hub
FROM apachewebdav/apachewebdav:latest

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

# Set the entry point for the container to start apachewebdav
ENTRYPOINT ["--restart always", "'AUTH_TYPE'='Basic'", "-v '/data/webdav':'/var/lib/dav/data':'rw'", "-p '80:80'"]
