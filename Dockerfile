FROM jjmerelo/alpine-perl6
ENV PATH=/root/.rakudobrew/moar-nom/install/share/perl6/site/bin:$PATH
RUN apk add wget git curl bash build-base gcc perl-dev
RUN cpan App::cpanminus
RUN cpanm -q --notest https://github.com/melezhik/outthentic.git Sparrow
RUN zef install https://github.com/melezhik/sparrowdo.git
COPY sparrowfile    /tmp/
RUN sparrowdo --local_mode --sparrowfile=/tmp/sparrowfile --no_sudo
COPY entrypoint.sh  /tmp/
COPY example.p6w    /tmp/
ENTRYPOINT ["/tmp/entrypoint.sh"]
EXPOSE 3000
