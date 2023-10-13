# Use official Node.js image
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for npm install
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy other project files to container
COPY . .

# Expose port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
