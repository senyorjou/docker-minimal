# builder
FROM golang:alpine AS builder

WORKDIR $GOPATH/src/main

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...


# runtime
FROM scratch

COPY --from=builder /go/bin/main /go/bin/main

CMD ["/go/bin/main"]
