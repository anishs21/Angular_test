FROM node:18

WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy rest of the app
COPY . .

# Expose Angular default port
EXPOSE 4200

# Serve the app
CMD ["ng", "serve", "--host", "0.0.0.0"]
