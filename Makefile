TAG = $(shell git describe --always --tag)
REPO = $(shell git rev-parse --show-toplevel)

image:
	docker build -t "baljanak/${REPO}:${TAG}" .
