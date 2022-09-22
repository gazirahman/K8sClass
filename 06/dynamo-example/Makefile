.phony: build push

all: build push 

build:
	docker build -t k8sclass/eks-dynamo .

push: 
	$$(echo aws ecr get-login-password --region us-east-2) | docker login --username AWS --password-stdin 079742931427.dkr.ecr.us-east-2.amazonaws.com
	docker tag k8sclass/eks-dynamo:latest 079742931427.dkr.ecr.us-east-2.amazonaws.com/k8sclass/eks-dynamo:latest
	docker push 079742931427.dkr.ecr.us-east-2.amazonaws.com/k8sclass/eks-dynamo:latest
