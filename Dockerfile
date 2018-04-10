# the first thing we specify in a Dockerfile is the base image. 
# This is essentially bare bones alpine linux with node installed.
#FROM node:8.4.0-alpine
FROM node:carbon

# Create app directory
RUN mkdir $HOME/app
WORKDIR $HOME/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]