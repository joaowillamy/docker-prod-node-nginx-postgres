
# pull the Node.js Docker image
FROM node:alpine

# create the directory inside the container
WORKDIR /usr/src/app
COPY package*.json ./

# our app is running on port 5000 within the container, so need to expose it
EXPOSE 5000
RUN npm install

RUN npm install -g nodemon

# the command that starts our app
CMD [ "nodemon", "--inspect=0.0.0.0:9229", "index.js" ]