FROM debian:9

RUN apt-get update -y \
    && apt-get install curl gnupg -y \
    && apt-get clean -y 

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
    && apt-get install -y nodejs \
    && apt-get clean -y 

ADD . /app/
WORKDIR /app
RUN npm install

EXPOSE 2368
VOLUME /app/logs

CMD npm run start


