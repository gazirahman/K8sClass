
.PHONY: build run dev clean logs push
VERSION := latest
all: build run

build: 
	docker build . -t k8s-sample/api:${VERSION}
	docker tag k8s-sample/api:${VERSION} 079742931427.dkr.ecr.us-east-2.amazonaws.com/k8s-sample/api

run: 
	docker run -d -p 80:80/tcp -v ${PWD}:/build/ k8s-sample/api:${VERSION}

dev: 
	docker-compose up 

clean: 
	docker rm --force `docker ps -aq`

logs: 
	docker logs -f k8s-sample-api

push: build
	$$(echo aws ecr get-login-password --region us-east-2) | docker login --username AWS --password-stdin 079742931427.dkr.ecr.us-east-2.amazonaws.com
	docker push 079742931427.dkr.ecr.us-east-2.amazonaws.com/k8s-sample/api

