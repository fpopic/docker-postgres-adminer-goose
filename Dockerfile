FROM golang:1.14

RUN go get -v -u 'github.com/pressly/goose/cmd/goose'

WORKDIR /app

COPY ./db/migrations /app/db/migrations

ENTRYPOINT ["/go/bin/goose", "-dir=/app/db/migrations/", "-v"]
CMD ["status"]