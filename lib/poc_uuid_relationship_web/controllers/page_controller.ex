defmodule PocUuidRelationshipWeb.PageController do
  use PocUuidRelationshipWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
