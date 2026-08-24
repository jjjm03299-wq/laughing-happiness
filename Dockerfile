FROM nginx:alpine
# Copy your generated static files into the Nginx public directory
COPY index.html /usr/html/index.html
COPY apt_packages.json /usr/share/nginx/html/apt_packages.json
EXPOSE 80
