# Use a lightweight Nginx web server on Alpine Linux
FROM nginx:alpine

# Remove any default or older files in the Nginx public directory
RUN rm -rf /usr/share/nginx/html/*

# Copy the new HTML file into the Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
