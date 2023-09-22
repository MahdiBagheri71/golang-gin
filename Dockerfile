FROM golang:latest

LABEL authors="mahdi"

WORKDIR /app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["./main"]
