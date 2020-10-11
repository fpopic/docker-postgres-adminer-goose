FROM golang:1.15.2-alpine3.12 AS builder
RUN apk --no-cache add build-base git
RUN GO111MODULE=on go get -v -u 'github.com/pressly/goose/cmd/goose@v2.6.0'

# copy only goose binary
FROM alpine:3.12
COPY --from=builder /go/bin/goose /go/bin/goose

WORKDIR /app
COPY ./db/migrations /app/db/migrations
ENTRYPOINT ["/go/bin/goose", "-dir=/app/db/migrations/", "-v"]
CMD ["status"]
