# Use the Nginx base image
FROM nginx:latest

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to Nginx's default directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
