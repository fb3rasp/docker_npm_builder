#/bin/sh

docker build . -t tepapa/dls-yarn-original

#docker save dls-yarn-original 
#
#sudo docker-squash -t dls-yarn 
#
#docker load
#docker rmi dls-yarn-original
