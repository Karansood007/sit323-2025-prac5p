# Dockerfile
FROM node:18

# Create app directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
