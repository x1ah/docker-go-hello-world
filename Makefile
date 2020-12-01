IMAGE=$(USER)/go-hello:latest

all: stop build run

build:
	docker build -t $(IMAGE) .

run:
	docker run -p 8080:8080 --name=go-hello -d $(IMAGE)

push:
	docker push $(IMAGE)

stop:
	-docker stop go-hello
	-docker rm go-hello

