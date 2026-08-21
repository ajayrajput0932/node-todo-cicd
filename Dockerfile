# Node.js base image
FROM node:20-alpine

# Working directory
WORKDIR /node

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . .

# Run tests
RUN npm test

# Application port
EXPOSE 8000

# Start application
CMD ["node", "app.js"]
