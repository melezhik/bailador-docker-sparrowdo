# SYNOPSIS

The example of running simple Bailador application using docker/sparrowdo

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

    $ sparrowdo --no_sudo --local_mode --sparrowfile=/tmp/sparrowfile
    $ perl /tmp/example.p6w # to make it sure that application run on new code
    $ ^C # to stop the application

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


