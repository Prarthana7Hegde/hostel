# Use official Node.js runtime
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy backend package files
COPY backend/package*.json ./

# Install dependencies
RUN npm install

# Copy backend source code
COPY backend/ .

# Expose your backend port
EXPOSE 4000

# Run server.js located inside backend/src
CMD ["node", "src/server.js"]
