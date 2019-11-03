FROM node:10-alpine

RUN npm install --global javascripting
RUN npm install -g learnyounode
RUN npm install -g async-you
RUN npm install -g promise-it-wont-hurt

### Extras
RUN npm install -g how-to-npm
RUN npm install -g elementary-electron