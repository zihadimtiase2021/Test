# Step 1: Node.js environment setup
FROM node:22-slim

# Step 2: OpenClaw globally install kora
RUN npm install -g openclaw@latest

# Step 3: Working directory set kora
WORKDIR /app

# Step 4: OpenClaw er default port expose kora
EXPOSE 3000

# Step 5: OpenClaw start command
# Fly.io te 0.0.0.0 port bind kora dorkar jate baire theke access kora jay
CMD ["openclaw", "start", "--port", "3000", "--host", "0.0.0.0"]
