# Auto-generated Dockerfile
FROM node:16-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./
RUN npm install --production || echo "No package.json found"

# Copy application files
COPY . .

# Expose port
EXPOSE 8080

# Start command
CMD ["npm", "start"] || ["node", "index.js"] || ["python", "app.py"] || ["echo", "No start command found"]
