# Use the official Caddy image as the base for the final image
FROM caddy:2

# Copy Caddy configuration file
COPY Caddyfile /etc/caddy/Caddyfile

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

# Set the entry point for the container to start Caddy
ENTRYPOINT ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]