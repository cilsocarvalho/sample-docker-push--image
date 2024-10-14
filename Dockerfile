# Use the official NGINX base image
FROM nginx:alpine3.18


# Copy custom configuration file (if needed)
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy website files to NGINX default directory
COPY ./html /usr/share/nginx/html

# Expose the default NGINX port
EXPOSE 80

# Start NGINX (this is the default command in the base image)
CMD ["nginx", "-g", "daemon off;"]
