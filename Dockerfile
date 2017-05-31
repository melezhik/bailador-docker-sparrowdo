FROM jjmerelo/alpine-perl6
RUN apk add wget git curl bash build-base gcc perl-dev
RUN cpan App::cpanminus
RUN cpanm -q --notest https://github.com/melezhik/outthentic.git Sparrow
RUN zef install https://github.com/melezhik/sparrowdo.git
ADD . /sparrowdo
RUN PATH=/root/.rakudobrew/moar-nom/install/share/perl6/site/bin:$PATH sparrowdo --local_mode --sparrowfile=/sparrowdo/sparrowfile --no_sudo
ENTRYPOINT ["/sparrowdo/entrypoint.sh"]
EXPOSE 3000
