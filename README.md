# SYNOPSIS

The example of running simple Bailador application using docker/sparrowdo

# USAGE

## Checkout the project

    $ git clone

## Build you image 

    $ docker build -t bailador .

## Run application

    $ docker run -d -p 3000:3000 $image_id

## Test application


This command should return `hello world` :

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


