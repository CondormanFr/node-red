FROM node:latest

MAINTAINER Romain GOUYET "docker@gouyet.com"


# install node-red
RUN npm install -g node-red

RUN cd /usr/local/lib/node_modules/  && npm i --unsafe-perm node-red-node-serialport
RUN npm install -g node-red-node-mysql
RUN npm install -g node-red-newtifrypro
RUN npm install -g noreowfs
RUN npm install -g node-red-contrib-parallel-iterator
RUN npm install -g node-red-contrib-route-parser

RUN npm install -g node-red-contrib-splitter
RUN npm install -g node-red-contrib-yamaha
RUN npm install -g node-red-contrib-npm
RUN npm install -g node-red-node-timeswitch
RUN npm install -g ttb-node-owntracks
RUN npm install -g node-red-node-nma
RUN npm install -g node-red-contrib-ftp
RUN npm install -g node-red-contrib-rfxcom
RUN npm install -g node-red-contrib-sql
RUN npm install -g node-red-node-sqlite
RUN npm install -g node-red-contrib-owfs
RUN npm install -g node-red-node-emoncms
RUN npm install -g node-red-contrib-influxdb
RUN npm install -g node-red-contrib-collector
# expose port
EXPOSE 1880

VOLUME /root/.node-red

# Set the default command to execute
# when creating a new container
WORKDIR /usr/local/bin
CMD ["/usr/local/bin/node-red", "-v"]

