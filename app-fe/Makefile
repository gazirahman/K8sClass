.PHONY: all build-dev build push

VERSION := latest

all: build push 

build: 
	docker build . -t k8s-sample/fe:${VERSION}
	docker tag k8s-sample/fe:${VERSION} 079742931427.dkr.ecr.us-east-2.amazonaws.com/k8s-sample/fe

push: 
	$$(echo aws ecr get-login-password --region us-east-2) | docker login --username AWS --password-stdin 079742931427.dkr.ecr.us-east-2.amazonaws.com
	docker push 079742931427.dkr.ecr.us-east-2.amazonaws.com/k8s-sample/fe
