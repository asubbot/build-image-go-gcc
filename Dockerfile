# https://hub.docker.com/r/asubbot/build-image-go-gcc

from ubuntu:18.04

# Install Golang tools (including linter supporting)
RUN apt-get update && apt-get install --no-install-recommends -y \
	  software-properties-common git gcc libc6-dev ca-certificates apt-utils
RUN apt-add-repository ppa:longsleep/golang-backports
RUN apt-get update && apt-get install --no-install-recommends -y golang-go

# Install GCC/G++ & QT tools 
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc g++ libssl-dev qtbase5-dev qtbase5-private-dev qtdeclarative5-dev libqt5svg5-dev qttools5-dev
          
# Install cmake without "--no-install-recommends" option
RUN apt-get update && apt-get install -y cmake make

# Install debian packages tools
RUN aapt-get update && pt-get install -y gettext-base chrpath
