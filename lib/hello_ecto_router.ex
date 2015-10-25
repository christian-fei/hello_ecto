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

  get "/" do
    send_resp(conn, 200, "Hello Ecto!")
  end

  get "/messages" do
    messages = HelloEcto.Repo.all_messages
    # IO.inspect messages
    # IO.inspect Poison.encode!(messages)
    send_resp(conn, 200, Poison.encode!(messages))
  end

  match _ do
    raise "oh my god"
  end

end
