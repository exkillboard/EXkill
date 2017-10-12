# Script for populating the database. You can run it as:
#
#     mix run priv/seed.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Mongo.insert_one!(:mongo, "collection", %{}, pool: DBConnection.Poolboy, database: "zkillboard")
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

list_to_insert = [
  %{"killID" => "65135369",
    "hash" => "6fcb39aebbad27706524065cc6688419ab0cc736"},
  %{"killID" => "65209446",
    "hash" => "062c435e2f1838ea69b89a33ba2080cfd9b91d93"}
]

collection = "crestmails"

options = [database: "zkillboard"]

{:ok, conn} = Mongo.start_link(database: "zkillboard",  hostname: "mongo")

Mongo.insert_many(conn, collection, list_to_insert, options)
|> IO.inspect()
