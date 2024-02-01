# Use the official Nginx base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the contents of your "dist" folder to the working directory
COPY dist/ .


# RUN rm /etc/nginx/conf.d/default.conf
# COPY nginx/nginxExtra.conf /etc/nginx/conf.d

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for incoming HTTP traffic
EXPOSE 8080

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
