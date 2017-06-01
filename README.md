# SYNOPSIS

Build a docker image with the latest [Bailador](https://github.com/Bailador/Bailador) source code 
and running `hello world` application.

# Description

This is the project to build docker image with the latest source code of Bailador and simple test application.
Docker file contains a few instructions, the main logic is hidden in sparrowfile. 

I use sparrowdo to build docker images.

The base image is [alpine-perl6](https://github.com/JJ/alpine-perl6).

# USAGE

## Checkout the project

    $ git clone

## Build image 

    $ docker build -t bailador .

## Run application as docker container 

    $ docker run -d -p 3000:3000 bailador

## Test application

This command should return `hello world` when running from host OS:

    $ curl 127.0.0.1:3000

## Update bailador source code

If you need to check changes made by Bailador developers you don't have to build the docker image from the scratch.
Instead ***use existed bailador image*** gets built previously:

- Run the docker container based on current image 
- Apply bailador source code changes by executing sparrowdo scenario inside the container
- Update docker image 

And, finally run updated the application the same way as described in the section earlier.

## use existed image and run container with bash session:

    $ docker run -it -p 3000:3000 --entrypoint bash bailador

## run sparrowdo scenario inside container to apply source code changes:

    # get Bailador changes and apply them
    $ sparrowdo --no_sudo --local_mode --sparrowfile=/tmp/sparrowfile

    # to make it sure that the application runs on new code
    $ perl /tmp/example.p6w 

    # to stop the application
    $ ^C 

## commit changes

    $ docker ps # to find out the image id

    $ docker commit $image_id bailador # to commit changes made in container into bailador image

    $ docker stop -t 1 $container_id # stop current docker container

## run application

As described in the section above just say this:

    $ docker run -d -p 3000:3000 bailador
  
## test application 

This command should return `hello world` when running from host OS:

    $ curl 127.0.0.1:3000

# Project structure

## example.p6w

Simple bailador application

## sparrowfile

Sparrowdo scenario to deploy Bailador 

## entrypoint.sh

Default entrypoint

# See also

[alpine-perl6](https://github.com/JJ/alpine-perl6) - base docker image 

# Author

Alexey Melezhik


