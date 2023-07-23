# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY ./Application/api-with-express-and-handlebars/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app source code
COPY ./Application/api-with-express-and-handlebars/ .

EXPOSE 3000

# Start the app
CMD ["npm", "start"]