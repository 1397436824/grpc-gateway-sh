#!/bin/bash

echo "start..."

GOPATH=`go env GOPATH`

rm -rf $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway
mkdir -p $GOPATH/src/github.com/grpc-ecosystem
cd $GOPATH/src/github.com/grpc-ecosystem
wget https://github.com/grpc-ecosystem/grpc-gateway/archive/v2.0.0.zip -O grpc-gateway.zip
unzip grpc-gateway.zip
rm -f grpc-gateway.zip
mv grpc-gateway-2.0.0 grpc-gateway

cd grpc-gateway/protoc-gen-grpc-gateway/

go build

go install

echo "finish."
