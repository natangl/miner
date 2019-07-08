FROM debian:jessie

COPY  . /

RUN apt-get update
RUN apt-get install -y automake 
RUN apt-get install -y autoconf 
RUN apt-get install -y pkg-config 
RUN apt-get install -y libcurl4-openssl-dev 
RUN apt-get install -y libjansson-dev 
RUN apt-get install -y libssl-dev 
RUN apt-get install -y libgmp-dev 
RUN apt-get install -y make 
RUN apt-get install -y g++

RUN cd Cpuminer && ./build.sh
