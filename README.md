# SYNOPSIS

The example of running simple Bailador application using docker/sparrowdo

# USAGE

## Checkout the project

    $ git clone

## Build you image 

    $ docker build -t bailador .

## Run application

    $ docker run -d -p 3000:3000 bailador

## Test application

This command should return `hello world` when running from host OS:

    $ curl 127.0.0.1:3000

# Update bailador source code

## build image

    $ docker build -t bailador .

## run container with bash session

    $ docker run -it -p 3000:3000 --entrypoint bash bailador

## run sparrowdo scenario inside container:

    $ sparrowdo --no_sudo --local_mode --sparrowfile=/tmp/sparrowfile

## run application

    perl6 /tmp/example.p6w 
    Entering the development dance floor: http://0.0.0.0:3000
    [2017-06-01T11:13:55Z] Started HTTP server.

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


