defmodule StructtWeb.PageController do
  use StructtWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
