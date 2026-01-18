FROM golang:1.22-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

# Build binary
RUN go build -o app ./app/main.go

# Jalankan binary
CMD ["./app"]
