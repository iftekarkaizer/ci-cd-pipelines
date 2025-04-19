FROM ubuntu:latest

WORKDIR /app



RUN apt-get update -y && apt-get upgrade -y 
RUN  apt install nginx -y 
RUN mkdir -p /var/www/html && echo "hello boy CHIKACHxczczxczcxczxcIKA" > /var/www/html/index.html

COPY . .

EXPOSE 4000

CMD ["nginx", "-g", "daemon off;"]

