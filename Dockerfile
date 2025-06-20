FROM traccar/traccar:6.7.3-alpine

# Set permissions for configuration and logs
RUN chmod -R 777 /opt/traccar/logs /opt/traccar/conf

# Copy run script
#COPY rootfs /

# Install dependencies
RUN \
    apk update && \
    apk add --no-cache \
        mariadb-client \
        xmlstarlet

# Expose ports: 8082 (Traccar web UI), 5055 (OsmAnd protocol)
EXPOSE 8082 5000-5150 5000-5150/udp