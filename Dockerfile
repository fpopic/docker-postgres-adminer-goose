FROM golang:1.14

RUN go get -v 'bitbucket.org/liamstask/goose/cmd/goose'

WORKDIR /app

COPY ./db/dbconf.yml /app/db/dbconf.yml
COPY ./db/migrations /app/db/migrations

ENTRYPOINT ["/go/bin/goose", "-env=default"]
CMD ["up"]
