DOCKER_TAG=neosit/interpolator:latest
EXECUTABLE=interpolator

all: deps build docker-build

deps:
	dep ensure

build:
	go build -o $(EXECUTABLE)

clean:
	go clean
	rm -rf vendor $(EXECUTABLE)

docker-build:
	docker build --no-cache -t $(DOCKER_TAG) .

docker-push:
	docker push  $(DOCKER_TAG)