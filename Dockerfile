# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code to the working directory
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
