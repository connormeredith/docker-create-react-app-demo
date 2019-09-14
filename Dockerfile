# Use the lightweight alpine container with node, npm and yarn pre-installed.
FROM node:10-alpine

# Set the working directory.
WORKDIR /home/node/app

# Copy over the package.json and package-lock.json first so the dependencies aren't reinstalled
# everytime a file is changed but only when the package.json is.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy over remaining files.
COPY . .

# Set the default container start command.
CMD ["npm", "start"]
