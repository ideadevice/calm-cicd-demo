TAG = $(shell head version/version)
IMAGE_REPO = calmio/cicd-demo

image:
        # build docker image
	docker build --pull=true -t "${IMAGE_REPO}:${TAG}" .

        # push docker image
	docker push "${IMAGE_REPO}:${TAG}"
