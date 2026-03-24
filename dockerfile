# Standard Node.js image
FROM node:22-slim

# Install OpenClaw globally
RUN npm install -g openclaw@latest

# Set working directory
WORKDIR /app

# OpenClaw default port
EXPOSE 3000

# Start OpenClaw
CMD ["openclaw", "start", "--port", "3000"]
