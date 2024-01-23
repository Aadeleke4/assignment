# Use the official Node.js image with version 14 and Alpine Linux
FROM node:14-alpine

# Set the working directory
WORKDIR /adeleke_adetumi_site

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 7775

# Command to run the application
CMD ["npm", "start"]
