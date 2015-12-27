FROM tutum/lamp:latest
MAINTAINER mar10 <mar10@wwwwendt.de>

# Replace hello world app from base container
# RUN rm -fr /app && git clone https://github.com/mar10/webtrees.git /app
RUN rm -fr /app

# The base container added a symlink: 'ln -s /app /var/www/html'
# so we can unzip webtrees to /app
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip

RUN cd /app
RUN wget https://launchpad.net/webtrees/1.7/1.7.2/+download/webtrees
RUN unzip webtrees-*.zip

EXPOSE 80 3306
CMD ["/run.sh"]
