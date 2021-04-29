FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# install less for view logs
RUN apt-get update && apt-get install -y less vim

# install dependencies
RUN npm install

# install appdynamics agent (with java proxy)
# RUN npm install --appd_include_java_proxy=true appdynamics

RUN npm install appdynamics
COPY . .
EXPOSE 8080

CMD [ "node", "server.js" ]
