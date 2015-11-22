defmodule HelloEcto.Router do
  use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end
  if Mix.env != :test do
    plug Plug.Logger
  end

  plug :match
  plug :dispatch

  get "/messages" do
    messages = HelloEcto.Repo.all_messages
    send_resp(conn, 200, Poison.encode!(messages))
  end

  match _ do
    send_resp(conn, 404, "404")
  end
end
