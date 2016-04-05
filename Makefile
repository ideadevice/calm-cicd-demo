TAG = $(shell git describe --always --tag)
IMAGE_REPO = "cicd-demo"

image:
        # build docker image
	docker build --pull=true -t "calmio/${IMAGE_REPO}:latest" .

        # test docker image
        # ToDO

        # push docker image
	docker push "calmio/${IMAGE_REPO}:latest"
