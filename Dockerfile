FROM golang:1.22-alpine

WORKDIR /app
COPY api/ ./api/
COPY go.mod go.sum ./
RUN go mod download
RUN go build -o main ./api

EXPOSE 8080

CMD ["./main"] 