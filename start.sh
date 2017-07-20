#/bin/sh

SOCKET_DIR=$(dirname $SSH_AUTH_SOCK)

docker run -it --rm --name dls-yarn \
	-v $SOCKET_DIR:/ssh-agent \
	-e SSH_AUTH_SOCK=/ssh-agent/Listeners \
	tepapa/dls-yarn-original:latest  \
	ssh git@github.com
