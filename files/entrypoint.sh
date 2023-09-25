go version

git config --global --add safe.directory /usr/src/app

go get -d -v ./...
go install -v ./...

go build -o app .

./app