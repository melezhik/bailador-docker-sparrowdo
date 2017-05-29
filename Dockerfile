FROM jjmerelo/alpine-perl6
RUN apk add git
RUN zef install https://github.com/melezhik/sparrowdo.git
