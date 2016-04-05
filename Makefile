TAG = $(shell git describe --always --tag)
REPO = $(shell basename `git rev-parse --show-toplevel`)

image:
        # build docker image
	docker build --pull=true -t "calmio/${REPO}:${TAG}" .

        # test docker image
        # ToDO

        # push docker image
	docker push "calmio/${REPO}:${TAG}"
