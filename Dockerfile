FROM nginx:alpine

# Copy the static web page and the generated package data to Nginx public directory
COPY index.html /usr/share/nginx/html/index.html
COPY apt_packages.json /usr/share/nginx/html/apt_packages.json

# Expose port 80 for HTTP traffic
EXPOSE 80
