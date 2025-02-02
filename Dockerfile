# Use the official Caddy image from Docker Hub
FROM caddy:2-builder AS builder

# Install the caddy-dav plugin
RUN xcaddy build --with \ 
    github.com/caddy-dns/infomaniak \
    github.com/mholt/caddy-webdav

# Use the official Caddy image as the base for the final image
FROM caddy:2

# Copy the Caddy binary with the WebDAV plugin from the builder
COPY --from=builder /usr/bin/caddy /usr/bin/caddy

# Copy Caddy configuration file
COPY Caddyfile /etc/caddy/Caddyfile

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

# Set the entry point for the container to start Caddy
ENTRYPOINT ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
