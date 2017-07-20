# Documentation

This docker image is used by the Te Papa Creative Technology team for the development of DLS-Interactives.

This module is based on the nodes 8.1 alpine image and uses alpine V3.6. This image installs Node 8.1.4 and Yarn V0.24.6

# Install 

Checkout this dockerfile into a folder and run the docker build command

    docker build . -t tepapa/dls-yarn

This build will generate an image with the tag co3_java_builder.
You can test the container by executing its shell:

    docker run -it --rm --name dls-yarn tepapa/dls-yarn:latest /bin/sh


## Jenkins

In Jenkins we can use this container  now to package up the artifact and prepare it for the deployment.

    docker run -i --rm --name co3-shim-make -v $(pwd):/usr/src/mymaven -w /usr/src/mymaven tepapa/co3_java_builder:latest make aws-package-$CO3_ENVIRONMENT

docker run -it --rm --name dls-yarn -v ~/.ssh:/root/.ssh -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK)  -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK tepapa/dls-yarn:latest  ssh git@github.com
docker run -it --rm --name dls-yarn -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent -v ~/.ssh:/root/.ssh tepapa/dls-yarn:latest bash

/usr/bin/ssh-add -K
/usr/bin/ssh-add -L



ssh-keygen -t rsa -f ./id_rsa_cli -q -P ""
