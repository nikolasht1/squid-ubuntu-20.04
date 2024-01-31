docker build -t squid-ubuntu .
docker run -it --name squid-ucont -e TZ=UTC -p 3128:3128 squid_ubuntu:latest

#push to dockerhub
docker login
docker tag c61a00fb7f20 nikolasht1/squid-ubuntu:20.04
docker push nikolasht1/squid-ubuntu:20.04