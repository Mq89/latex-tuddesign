FROM jfornoff/latex-tuddesign
LABEL maintainer="mh@0x25.net"

RUN apt-get update
RUN apt-get -y install git wget


WORKDIR /usr/src/datetime2
RUN wget http://mirrors.ctan.org/macros/latex/contrib/datetime2.zip
RUN unzip datetime2.zip
WORKDIR /usr/src/datetime2/datetime2
RUN latex datetime2.ins
RUN mkdir /usr/share/texlive/texmf-dist/tex/latex/datetime2
RUN mv *.sty /usr/share/texlive/texmf-dist/tex/latex/datetime2
RUN texhash
WORKDIR /data

CMD ["/bin/bash"]
