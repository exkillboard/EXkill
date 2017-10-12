# Exkill

## What ?

Exkill is a rewrite of [zKillboard](https://zkillboard.com/) in Elixir, with a more up to date javascript and html code. It has to be a drop in replacement for existing part of zKillboard, so that it could be exchanged piecemeal "on the fly".

## Why ?
![How hard can it be?]
(http://i.imgur.com/RGSwt62.jpg)

zKillboard is an amazing piece of software and a really great website that helps the full eve community. And we will never thank Squizz Caphinator enough for it.

Now the codebase has a ... long history. It has grown organically over the years, and it shows. Between the Jquery blocked at 1.9, the codebase being full PHP and an accumulation of historical baggage, the codebase has a couple of problems.

If it is still amazing, the website is not built to support a full charge of eve players coming to get data during big wars. It survive through a heavy amount of caching and some really nice tricks, but it shows that it was not built for that.

This is why a team of developers decided to see if rewriting it from scratch would be of use.

Also by rewriting from scratch we can get rid of the AGPL. And that please a lot of us.

## When ?

Soon TM

## How to get a developing environment running ?

We use `docker-compose` to generate a full development environment.
You can see it in full at [docker-compose.yml](docker-compose.yml).

To get a full running environment, just do 
```
#> docker-compose up
```

which will build and launch a full environment. (you can launch it in the background with the `-d` flag).

Then all you have to do is
```
#> docker-compose exec web /bin/bash
```
to get a shell in the full environment.

If you want to see the website running, you can then type
```
#bash> mix phx.server
```
which will launch the webserver and its connection to the mongo database.
You can now visit `localhost:4100` and see it in all its glory.


## LICENSE

This work will probably be licensed under the MIT license once finished. If you contribute, you accept that.
