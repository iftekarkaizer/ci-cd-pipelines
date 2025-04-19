FROM ubuntu:latest

WORKDIR /app



RUN apt-get update -y && apt-get upgrade -y \
&& apt install nginx -y \
&& rm -rf /var/www/html/* \
&& touch index.html \
&& mv index.html /var/www/html \
&& echo > "hello boy" > var/www/html/index.html

COPY . .

EXPOSE 4000

CMD ["nginx", "-g", "daemon off;"]

