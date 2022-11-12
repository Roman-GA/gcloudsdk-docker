FROM golang:1.19 as golang

FROM gcr.io/google.com/cloudsdktool/cloud-sdk:slim

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV GOROOT=/usr/local/go/

ENV PATH=$PATH:/usr/local/go/bin/

RUN go version

