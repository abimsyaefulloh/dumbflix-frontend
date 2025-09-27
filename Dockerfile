# Simple static hosting via Nginx
FROM nginx:alpine

# Copy static files
COPY .

# Healthcheck (optional)
HEALTHCHECK --interval=30s --timeout=3s   CMD wget -qO- http://localhost || exit 1
