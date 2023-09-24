FROM golang:1.21

WORKDIR /usr/src/app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .

COPY files/entrypoint.sh /usr/local/bin/entrypoint.sh

# Make entrypoint script executable and run it on container start-up.
RUN chmod +x /usr/local/bin/entrypoint.sh


CMD bash -C '/usr/local/bin/entrypoint.sh';'bash'

