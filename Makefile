VERSION = 0.2.0

docker-build:
	docker build -t do360now/mynodejs:${VERSION} .

docker-run:
	docker run -d --name petname -p 3000:3000 do360now/mynodejs:${VERSION}

encrypt:
	ansible-vault encrypt .env --ask-vault-pass

decrypt:
	ansible-vault decrypt .env

