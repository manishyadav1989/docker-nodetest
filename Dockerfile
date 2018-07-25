FROM ubuntu:14.04.1
RUN sed -i "s/^exit 101$/exit 0/" /usr/sbin/policy-rc.d
RUN sudo apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
    sudo apt-get install nodejs -y

WORKDIR expressApp/
COPY . .
#RUN npm install
RUN npm install -g nodemon
CMD nodemon ./bin/www
EXPOSE 3300