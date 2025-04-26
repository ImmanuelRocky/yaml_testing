# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Make the app available on port 8080
EXPOSE 8080

# Define the command to run the app
CMD ["node", "app.js"]

