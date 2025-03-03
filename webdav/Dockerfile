# Use the apachewebdav image from Docker Hub
FROM apachewebdav/apachewebdav:latest

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

RUN \
    # Create directory for private information (serving as a mount-point)
    mkdir -p "/var/lib/dav/private"; \
    # Create symlink to /user.passwd (so user info is sourced externally)
    ln -s "/var/lib/dav/private/user.passwd" "/user.passwd";