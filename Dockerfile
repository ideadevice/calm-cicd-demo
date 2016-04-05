FROM golang

# Install glide
RUN go get github.com/Masterminds/glide
RUN go build github.com/Masterminds/glide

# Add project directory to Docker image.
ADD . /go/src/github.com/ideadevice/calm-cicd-demo

ENV USER baljanak
ENV HTTP_ADDR :8888
ENV HTTP_DRAIN_INTERVAL 1s
ENV COOKIE_SECRET sk3ZUyR8rSv0qRO7

# Replace this with actual PostgreSQL DSN.
ENV DSN postgres://baljanak@localhost:5432/calm-cicd-demo?sslmode=disable

WORKDIR /go/src/github.com/ideadevice/calm-cicd-demo

RUN glide install
RUN go build

EXPOSE 8888
CMD ./calm-cicd-demo
