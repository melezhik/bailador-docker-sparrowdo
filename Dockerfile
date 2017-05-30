FROM jjmerelo/alpine-perl6
RUN apk add wget git curl bash build-base gcc perl-dev openrc
RUN cpan App::cpanminus
RUN cpanm -q --notest https://github.com/melezhik/outthentic.git Sparrow
RUN zef install https://github.com/melezhik/sparrowdo.git Sparrowdo::Nginx
ADD . /sparrowdo
RUN PATH=/root/.rakudobrew/moar-nom/install/share/perl6/site/bin:$PATH && sparrowdo --host=127.0.0.1 --local_mode --sparrowfile=/sparrowdo/sparrowfile --no_sudo
