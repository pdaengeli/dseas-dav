# Use the apachewebdav image from Docker Hub
FROM apachewebdav/apachewebdav:latest

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

RUN ["touch", "/user.passwd"]

# Create directory for private information (serving as a mount-point)
RUN ["mkdir", "-p", "/var/lib/dav/private"]

# Create symlink to /user.passwd (so user info is sourced externally)
RUN ["ln", "-sf", "/var/lib/dav/private/user.passwd", "/user.passwd"]

COPY webdav/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "httpd-foreground" ]