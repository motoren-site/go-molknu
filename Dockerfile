
FROM golang:1.16-buster AS builder

WORKDIR /app

COPY go.* ./

RUN go mod download

COPY *.go ./

RUN go build -o /go-molknu

EXPOSE 8080

ENTRYPOINT ["/go-molknu"]