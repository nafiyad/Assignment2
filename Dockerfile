FROM node:20.15.1-alpine

# Install netlify-cli
RUN npm install -g netlify-cli

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

CMD ["sh", "-c", "netlify --version"] 