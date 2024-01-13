FROM node:16.20.0-alpine AS builder
# Add a work directory
WORKDIR /app

# Cache and Install dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install
# Copy app files
COPY . .
# COPY test.sh .
COPY scripts .
# Build the app
RUN npm run build

# Bundle static assets with nginx
FROM nginx:stable-alpine
# Copy built assets from builder
COPY --from=builder /app/dist /usr/share/nginx/html
# COPY --from=builder /app/test.sh /usr/share/nginx/build/test.sh
COPY --from=builder /app/scripts /usr/share/nginx/scripts
# Add custom nginx.conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
# Expose port
EXPOSE 80


RUN sh /usr/share/nginx/scripts/test.sh


# Start nginx
CMD ["nginx", "-g", "daemon off;"]

# CMD ["node", "server.js"]