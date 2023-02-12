FROM node:19

RUN apt-get update \
&& apt-get upgrade -y \
&& git clone https://github.com/do360now/openai-quickstart-node.git \
&& cd openai-quickstart-node
# cp .env.example .env


COPY . /openai-quickstart-node

WORKDIR /openai-quickstart-node

EXPOSE 3000

RUN npm install -g npm@9.4.2 \
&& npm install
CMD ["npm", "run", "dev"]
