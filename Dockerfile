FROM golang:1.22-alpine

WORKDIR /usr/local/go/src/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o server ./app/main.go

CMD ["./server"]
