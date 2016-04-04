FROM golang

# Fetch dependencies
RUN go get github.com/tools/godep

# Add project directory to Docker image.
ADD . /go/src/github.com/ideadevice/calm-cicd-demo

ENV USER baljanak
ENV HTTP_ADDR :8888
ENV HTTP_DRAIN_INTERVAL 1s
ENV COOKIE_SECRET sk3ZUyR8rSv0qRO7

# Replace this with actual PostgreSQL DSN.
ENV DSN postgres://baljanak@localhost:5432/calm-cicd-demo?sslmode=disable

WORKDIR /go/src/github.com/ideadevice/calm-cicd-demo

RUN godep go build

EXPOSE 8888
CMD ./calm-cicd-demo