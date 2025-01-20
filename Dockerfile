FROM nginx:alpine

# Copy static website content
COPY index.html /usr/share/nginx/html/
COPY main.css /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
