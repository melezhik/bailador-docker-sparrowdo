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

# Update bailador source code

Sometimes you want to check changes made by Bailador developers. 
Use existed bailador image, run sparrowdo scenario
to apply latest Bailador changes and update docker image. 
Then run application as described in the section earlier.


## use existed image and run container with bash session:

    $ docker run -it -p 3000:3000 --entrypoint bash bailador

## run sparrowdo scenario inside container:

    $ sparrowdo --no_sudo --local_mode --sparrowfile=/tmp/sparrowfile

## commit changes

    $ docker ps # to find out image id

    $ docker commit $image_id bailador

    $ docker stop -t 1 $container_id # stop current docker container

## run application

As in the section above:

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


