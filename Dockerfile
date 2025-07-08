# Use Node base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app code
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
