# Exkill

A rewrite of [zkillboard](https://github.com/zKillboard/zKillboard) in Elixir to see if it can help in peak.

## Contributing

First you need to download the whole project
```sh
git clone https://github.com/DianaOlympos/EXkill
cd exkill
```

Then you will want to have a MongoDB running and accesible.
**TODO** : Add Mongo instructions

Then you will want to update your database information on the `config/config.exs` file, to supply your own.
```elixir
config :exkill, Exkill.Mongo,
  hostname: "localhost",
  port: 27017,
  database: "zkillboard",
  username: "username",
  password: "password",
  pool_size: 20,
  max_overflow: 5
```
You may want to do it in a `config/config.secret.exs`, not tracked by your VCS, that you will import at the bottom of the `config/config.exs` file.
```elixir
import_config "config.secret.exs"
```

You may want to do the same for your `secret_key_base`, that you can generate with 
```sh
mix phoenix.gen.secret
```

**TODO** Seeding the db


## Differences with original Zkillboard

Anything that used **mdb.now(delta)** should move to something done by hand that use Mongodb.BSON.DateTime and add the delta by hand.