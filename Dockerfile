FROM node:0.12

MAINTAINER Romain GOUYET "docker@gouyet.com"

# install node-red
RUN npm install -g node-red

RUN cd /usr/local/lib/node_modules/  && npm i --unsafe-perm node-red-node-serialport
RUN npm install -g node-red-node-mysql
RUN npm install -g node-red-contrib-owfs

# expose port
EXPOSE 1880

VOLUME /root/.node-red

# Set the default command to execute
# when creating a new container
CMD ["/usr/local/bin/node-red -v"]

