VERSION = 0.3.0

docker-build:
	docker build -t do360now/helloainode:${VERSION} .

docker-run:
	docker run -d --name helloai -p 3000:3000 do360now/helloainode${VERSION}
	docker ps

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

