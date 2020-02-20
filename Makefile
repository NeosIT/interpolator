IMAGE=neosit/interpolator
TAG=0.9.0
EXECUTABLE=interpolator

all: build docker-build

build:
	go build -o $(EXECUTABLE)
	strip $(EXECUTABLE)

clean:
	go clean
	rm -rf vendor $(EXECUTABLE)

docker-build:
	docker build --no-cache -t ${IMAGE}:${TAG} .

docker-push:
	docker tag ${IMAGE}:${TAG} ${IMAGE}:latest
	docker push ${IMAGE}:${TAG}
	docker push ${IMAGE}:latest