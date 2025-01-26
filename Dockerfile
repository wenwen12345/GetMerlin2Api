FROM golang:1.23-bullseye
WORKDIR /app
RUN mkdir -p /.cache && \
    chmod -R 777 /.cache
COPY api/ ./api/
COPY go.mod go.sum ./
RUN go mod download
RUN uname -a
EXPOSE 8080
CMD ["go", "run", "api/chat.go"] 