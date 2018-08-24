FROM land007/cpp-opencv:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN apt-get install -y --no-install-recommends libgflags-dev libboost-all-dev pkg-config
RUN cd /tmp && wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/google-glog/glog-0.3.3.tar.gz && tar -zxvf glog-0.3.3.tar.gz && rm -r /tmp/glog-0.3.3.tar.gz
RUN cd /tmp/glog-0.3.3 && ./configure && make && make install && rm -rf /tmp/glog-0.3.3


#docker stop cpp-boost ; docker rm cpp-boost ; docker run -it --privileged --name cpp-boost land007/cpp-boost:latest
