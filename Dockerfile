FROM golang:1-stretch

RUN apt install -y make

RUN useradd --create-home --shell /bin/bash changeme
USER changeme

RUN mkdir -p /home/changeme/{.cache/go-build,go/bin}
ENV GOPATH=/home/changeme/go

COPY . /home/changeme/app
WORKDIR /home/changeme/app

RUN make build

ENTRYPOINT [ "make", "run" ]
