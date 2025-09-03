# Use lightweight Nginx image
FROM nginx:alpine

# Copy all website files into Nginx's web root
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80
