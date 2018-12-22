FROM golang:1.11.4-stretch

WORKDIR /

RUN apt-get update \
  && apt-get install --no-install-recommends \
  -y build-essential git curl wget zlib1g-dev libxml2-dev libxslt1-dev openssl less libssl-dev libreadline-dev vim unzip mysql-client

# Install goose
RUN go get bitbucket.org/liamstask/goose/cmd/goose
