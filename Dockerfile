FROM golang:1.11

ENV SRCPATH $GOPATH/src/github.com/purpleidea/mgmt/

RUN git clone --recursive https://github.com/purpleidea/mgmt/ ${SRCPATH}
RUN apt-get update && cd ${SRCPATH} && make deps && make && apt-get clean 

ENV PATH $PATH:.
WORKDIR ${SRCPATH}