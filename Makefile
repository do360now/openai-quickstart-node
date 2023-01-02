VERSION = 0.2.0

docker-build:
	docker build -t do360now/mynodejs:${VERSION} .

docker-run:
	docker run -d --name petname -p 80:80 do360now/mynodejs:${VERSION}

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

