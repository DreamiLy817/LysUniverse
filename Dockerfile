FROM debian:10

RUN apt-get update -y \
    && apt-get install curl gnupg -y \
    && apt-get clean -y 

RUN apt-get install nginx -y

COPY . /var/www/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

# RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
#     && apt-get install -y nodejs \
#     && apt-get clean -y 

# ADD . /app/
# WORKDIR /app
# RUN npm install

# #EXPOSE 2368
# VOLUME /app/logs

# CMD npm run start


