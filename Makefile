

docker-build:
	docker build -t do360now/mynodejs:0.1.0 .

docker-run:
	docker run -d --name petname -p 3000:3000 do360now/mynodejs:0.1.0

encrypt:
	ansible-vault encrypt .env --ask-vault-pass

decrypt:
	ansible-vault decrypt .env

