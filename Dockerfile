FROM jjmerelo/alpine-perl6
RUN apk add git curl bash build-base gcc perl-dev
RUN cpan App::cpanminus
#RUN cpanm --no-wget --q --notest Clone
RUN cpanm --no-wget -q --notest https://github.com/melezhik/outthentic.git Sparrow
RUN zef install https://github.com/melezhik/sparrowdo.git
ADD . /sparrowdo
RUN DATE=`date` PATH=/root/.rakudobrew/moar-nom/install/share/perl6/site/bin:$PATH && sparrowdo --host=127.0.0.1 --local_mode --sparrowfile=/sparrowdo/sparrowfile --no_sudo
