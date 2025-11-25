# Use official nginx as base image
FROM nginx:alpine

# add wget (used by healthcheck in docker-compose) and keep image small
RUN apk add --no-cache wget

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy nginx configuration first (overrides default config)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy all site files (HTML, JSON, assets) into nginx html folder
# This ensures `knight5x5_full_1728_matrix.json` and any other assets are available
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
