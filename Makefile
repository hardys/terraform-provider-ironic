LDFLAGS += -X main.version=$$(git describe --always --abbrev=40 --dirty)
TEST?=$$(go list ./... |grep -v 'vendor')
PKG_NAME=ironic
TERRAFORM_PLUGINS=$(HOME)/.terraform.d/plugins

default: fmt lint build

build:
	go build -ldflags "${LDFLAGS}"

install: default
	mkdir -p ${TERRAFORM_PLUGINS}
	mv terraform-provider-ironic ${TERRAFORM_PLUGINS}

fmt:
	go fmt ./ironic .

tools:
	go get golang.org/x/lint/golint

lint: tools
	go run golang.org/x/lint/golint -set_exit_status ./ironic .

test:
	go test -v ./ironic

clean:
	rm -f terraform-provider-ironic

.PHONY: build install test fmt lint
