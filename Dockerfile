FROM golang:1.23-bullseye
WORKDIR /app
ENV UUID="c3fbed69-22a5-46b7-8721-3afc252d94e3"
RUN mkdir -p /.cache && \
    chmod -R 777 /.cache
COPY api/ ./api/
COPY go.mod go.sum ./
RUN go mod download
RUN uname -a
EXPOSE 7860
CMD ["go", "run", "api/chat.go"] 
