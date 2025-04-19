FROM ubuntu:latest

WORKDIR /app



RUN apt-get update -y && apt-get upgrade -y \
&& apt install nginx -y \
&& rm -rf /var/www/html/* \
&& touch index.html \
&& mv index.html /var/www/html 

COPY . .

EXPOSE 6000

CMD ["nginx", "-g", "daemon off;"]

