FROM nginx:stable-alpine

RUN mkdir /tmp2

COPY nginx.conf /tmp2/nginx.conf

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

RUN ls -l /

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

EXPOSE 80

USER 10014

# Use the entrypoint script to start the container
ENTRYPOINT ["/entrypoint.sh"]
