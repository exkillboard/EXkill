defmodule MongoPool do
  use Mongo.Pool,
    name: __MODULE__,
    adapter: Mongo.Pool.Poolboy,
    hostname: Application.get_env(:exkill, Exkill.Mongo, :hostname),
    port: Application.get_env(:exkill, Exkill.Mongo, :port),
    database: Application.get_env(:exkill, Exkill.Mongo, :database),
    username: Application.get_env(:exkill, Exkill.Mongo, :username),
    password: Application.get_env(:exkill, Exkill.Mongo, :password),
    pool_size: Application.get_env(:exkill, Exkill.Mongo, :pool_size),
    max_overflow: Application.get_env(:exkill, Exkill.Mongo, :max_overflow)
end