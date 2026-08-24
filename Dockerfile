FROM nginx:alpine

# Copy the static web page and package data
COPY index.html /usr/share/nginx/html/index.html
COPY apt_packages.json /usr/share/nginx/html/apt_packages.json

# Redirect Nginx temporary paths to a writable directory (/tmp)
RUN sed -i 's|user  nginx;|#user  nginx;|g' /etc/nginx/nginx.conf && \
    sed -i 's|/var/cache/nginx|/tmp/cache|g' /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80
