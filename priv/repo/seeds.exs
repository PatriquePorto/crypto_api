# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CryptoApi.Repo.insert!(%CryptoApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias CryptoApi.Repo
alias CryptoApi.Catalog.Coin

Repo.delete_all("coins")

Repo.insert!(%Coin{ticker: "BTC", name: "Bitcoin", price: 25003.1})
Repo.insert!(%Coin{ticker: "ETH", name: "Ethereum", price: 1683.1})
Repo.insert!(%Coin{ticker: "LTC", name: "Litecoin", price: 79.34})
Repo.insert!(%Coin{ticker: "ADA", name: "Cardano", price: 0.3263})
