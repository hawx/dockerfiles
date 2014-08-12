FROM       ubuntu:14.04
MAINTAINER Joshua Hawxwell <m@hawx.me>

RUN        apt-get -qq update
RUN        apt-get -qqy install ruby ruby-dev git build-essential
RUN        gem install bundler --no-rdoc --no-ri
RUN        apt-get -qqy install calibre zlib1g-dev

RUN        git clone https://github.com/hawx/alexandria-web.git /app
ADD        settings.yml /app/settings.yml

WORKDIR    /app
RUN        bundle install
EXPOSE     3000
VOLUME     /app/alexandria
CMD        bundle exec thin -R config.ru -p 3000 start
