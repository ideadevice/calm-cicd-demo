TAG = $(shell git describe --always --tag)
REPO = $(shell basename `git rev-parse --show-toplevel`)

image:
	docker build -t "baljanak/${REPO}:${TAG}" .
