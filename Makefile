VERSION = 0.3.0

docker-build:
	docker build -t helloairegistry.azurecr.io/helloai:${VERSION} .

# docker tag hello-world helloairegistry.azurecr.io/hello-world

docker-run:
	docker run -d --name helloai -p 3000:3000 helloairegistry.azurecr.io/helloai:${VERSION}
	docker ps

docker-login:
	docker login helloairegistry.azurecr.io

docker-push:
	docker push helloairegistry.azurecr.io/helloai:${VERSION}
# docker push helloairegistry.azurecr.io/hello-world

encrypt:
	ansible-vault encrypt .env --ask-vault-pass

decrypt:
	ansible-vault decrypt .env

# Install Docker on Raspberry Pi
install-docker:
	curl -sSL https://get.docker.com | sh

install-ansible:
	python3 -m pip install --user ansible

set-path:
	export PATH=$PATH:/home/pi/.local/bin

