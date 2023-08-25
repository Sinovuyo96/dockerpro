# Use the latest Ubuntu image
FROM ubuntu:latest

# Update the package list and install nginx
RUN apt-get update && apt-get install -y nginx

# Remove the default nginx page and Copy your website contents into the Nginx default directory
RUN rm -rf /var/www/html/*
COPY website/ /var/www/html/

# Specify the port
EXPOSE 80

# Start Nginx service in the foreground
CMD ["nginx", "-g", "daemon off;"]
