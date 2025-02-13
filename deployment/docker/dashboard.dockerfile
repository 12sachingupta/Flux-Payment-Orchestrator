# Use the official Node.js image
FROM node:16-alpine

WORKDIR /app

# Copy package.json (and package-lock.json if available) first to install dependencies
COPY dashboard/package*.json ./

RUN npm install

# Copy the rest of the dashboard source code
COPY dashboard/ ./

# Expose the port used by the dashboard (adjust if needed)
EXPOSE 3000

CMD ["npm", "start"]
