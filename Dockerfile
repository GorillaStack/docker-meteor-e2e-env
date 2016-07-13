FROM node:latest
# install lsb-release and locales, required for mongodb
RUN apt-get update && apt-get install lsb-release locales
RUN locale-gen en_US.UTF-8
RUN localedef -i en_GB -f UTF-8 en_US.UTF-8
RUN echo LC_ALL=en_US.UTF-8 >> /etc/default/locale
# install mongodb
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
#RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list
#RUN apt-get update && apt-get install -y mongodb-org
# install meteor
RUN curl https://install.meteor.com | sh
# install grunt
RUN npm install -g grunt-cli
