# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory in the Docker container
WORKDIR /devcafe-front

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js application for production
RUN npm run build

# Expose port 3000 (or any other port your Next.js application listens on)
EXPOSE 3000

# Start the Next.js application

CMD ["npm", "start"]
