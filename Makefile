

docker-build:
	docker build -t do360now/mynodejs:0.1.0 .

docker-run:
	docker run -d -p 3000:3000 do360now/mynodejs:0.1.0

encrypt:
	ansible-vault encrypt .env

decrypt:
	ansible-vault decrypt .env

