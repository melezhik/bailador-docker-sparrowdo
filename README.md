# SYNOPSIS

The example of building docker images for Perl6/Bailador applications using sparrowdo

# USAGE


## Checkout the project

    $ git clone

## Create some sparrowdo scenario. 

    $ nano sparrowfile 

* Simple example could be found at ./sparrowfile.examaple.pl6

* Follow [sparrowdo dsl](https://github.com/melezhik/sparrowdo/blob/master/core-dsl.md) documentation for full guide.


## Build you image 

    $ docker build -t bailador .


# Author

Alexey Melezhik


