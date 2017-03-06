NAME = better-alb
VERSION = "1" #$(shell git describe --tags)

WORKDIR = /app

LDFLAGS = -X main.version=$(VERSION)

.PHONY: build clean deps

build: deps
	go build -ldflags "$(LDFLAGS)" -v -o build/$(NAME)-linux-amd64 ; \
	cp build/$(NAME)-linux-amd64 /usr/bin/$(NAME)

clean:
	rm -rf build

deps:
	glide install
