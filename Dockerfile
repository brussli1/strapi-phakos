# Use the official Node.js 20 image as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN npm install

# Make port 1337 available to the world outside this container
EXPOSE 1337

# Run the app when the container launches
CMD ["npm", "run", "develop"]
