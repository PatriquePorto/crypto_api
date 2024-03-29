defmodule CryptoApi.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CryptoApi.Catalog` context.
  """

  @doc """
  Generate a unique coin ticker.
  """
  def unique_coin_ticker, do: "some ticker#{System.unique_integer([:positive])}"

  @doc """
  Generate a coin.
  """
  def coin_fixture(attrs \\ %{}) do
    {:ok, coin} =
      attrs
      |> Enum.into(%{
        name: "some name",
        price: "120.5",
        ticker: unique_coin_ticker()
      })
      |> CryptoApi.Catalog.create_coin()

    coin
  end
end
