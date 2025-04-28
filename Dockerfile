# We will use the official Nginx image
FROM nginx:alpine

# We will delete the default nginx content
RUN rm -rf /usr/share/nginx/html/*

# We will copy our website
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Nginx runs on port 80 inside the container, but we will later map port 3100 outside

EXPOSE 80