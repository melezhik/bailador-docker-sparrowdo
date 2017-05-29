# SYNOPSIS

The example of building docker images for Perl6/Bailador applications using sparrowdo

# USAGE


## Checkout the project

    $ git clone

## Create some sparrowdo scenario. 

    $ nano sparrowfile 

* Simple example could be found at ./sparrowfile.examaple.pl6

* Follow [sparrowdo dsl](https://github.com/melezhik/sparrowdo/blob/master/core-dsl.md) documentation for full guide.

CAVEAT - Alpine Linux has poor support at Sparrowdo, some of plugins won't work ( user, group ... ). Don't
hesitate to drop me an issue if you are interested in full Alpine support.


## Build you image 

    $ docker build -t bailador .


# Author

Alexey Melezhik


