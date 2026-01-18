FROM golang:1.22-alpine
FROM golang:1.22-alpine

WORKDIR /usr/local/go/src/app
WORKDIR /usr/local/go/src/app

COPY go.mod go.sum ./
RUN go mod download
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build ./app/main.go

CMD ["./usr/local/go/src/app"]
