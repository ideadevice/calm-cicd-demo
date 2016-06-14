TAG = $(shell head version/version)
IMAGE_REPO = calmio/cicd-demo

image:
        # build docker image
	docker build --build-arg APP_VERSION=${TAG} --pull=true -t "${IMAGE_REPO}:${TAG}" .

        # push docker image
	docker push "${IMAGE_REPO}:${TAG}"
