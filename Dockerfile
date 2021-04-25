FROM nginx:alpine

# Remove default configuration and add our custom Nginx configuration files
RUN rm /etc/nginx/conf.d/default.conf \
    && apk add --no-cache curl

# Copy nginx config
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# Copy build source
COPY ./build/web /var/www/html/web

# Start nginx deamon
CMD ["nginx", "-g", "daemon off;"]  