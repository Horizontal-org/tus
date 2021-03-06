.PHONY: test prep build

test:
	go test -cover ./...

prep:
	go mod tidy
	go fmt ./...
	go build ./...
	go test ./...

build:
	go build github.com/horizontal-org/direct-upload/ bin/direct-upload

windows:
	CGO_ENABLED=0 GOOS=windows go build -a -installsuffix cgo -o bin/direct-upload.exe
