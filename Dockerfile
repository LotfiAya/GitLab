# Use official Node.js image
FROM node:20-alpine

# Create app directory inside container
WORKDIR /app

# Copy dependency definitions
COPY package.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# App runs on port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]