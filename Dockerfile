FROM jjmerelo/alpine-perl6
ADD . /sparrowdo
ENV PATH=/root/.rakudobrew/moar-nom/install/share/perl6/site/bin:$PATH
ENV BAILADOR=debug,host:0.0.0.0,port:3000
RUN apk add wget git curl bash build-base gcc perl-dev
RUN cpan App::cpanminus
RUN cpanm -q --notest https://github.com/melezhik/outthentic.git Sparrow
RUN zef install https://github.com/melezhik/sparrowdo.git
RUN sparrowdo --local_mode --sparrowfile=/sparrowdo/sparrowfile --no_sudo
ENTRYPOINT ["/sparrowdo/entrypoint.sh"]
EXPOSE 3000
