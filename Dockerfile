FROM jfornoff/latex-tuddesign
LABEL maintainer="mh@0x25.net"

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install git wget biber make

COPY install_datetime2.sh .
RUN chmod +x install_datetime2.sh && ./install_datetime2.sh

COPY install_fontawesome.sh .
RUN chmod +x install_fontawesome.sh && ./install_fontawesome.sh

CMD ["/bin/bash"]
