FROM elixir:1.5.1

RUN apt-get update -qq && apt-get install -y build-essential \
curl git sudo make openssl python-pip gcc apt-transport-https \
dialog python-software-properties software-properties-common inotify-tools \
nodejs

RUN mix local.rebar --force && mix local.hex --force

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && sudo apt-get install -y nodejs

RUN npm install npm@latest -g

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn

WORKDIR /code

CMD mix deps.get && /bin/bash
