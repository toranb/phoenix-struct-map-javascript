defmodule StructtWeb.PageController do
  use StructtWeb, :controller

  def generate_cards do
    [
      %StructtWeb.Card{id: 1, name: "bird", image: "/images/animals/bird.png"},
      %StructtWeb.Card{id: 2, name: "bird", image: "/images/animals/bird.png"},
      %StructtWeb.Card{id: 3, name: "cat", image: "/images/animals/cat.png"},
      %StructtWeb.Card{id: 4, name: "cat", image: "/images/animals/cat.png"},
    ]
  end

  def index(conn, _params) do
    {:ok, cards} =
      generate_cards()
      |> Enum.map(&Map.from_struct(&1))
      |> Phoenix.json_library().encode()
    render(conn, "index.html", %{cards: cards})
  end

end
