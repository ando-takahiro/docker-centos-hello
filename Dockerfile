# DOCKER-VERSION 0.3.
FROM    centos:6.4

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y nodejs npm git

# Bundle app source
RUN git clone https://github.com/ando-takahiro/docker-centos-hello.git

# Install app dependencies
RUN cd /docker-centos-hello; npm install

EXPOSE  8080
CMD ["node", "/docker-centos-hello/index.js"]
