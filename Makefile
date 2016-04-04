TAG = $(shell git describe --always --tag)
image:
	docker build -t "baljanak/calm-cicd-demo:${TAG}" .
