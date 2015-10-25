defmodule HelloEcto.Worker do
  def start_link do
    Plug.Adapters.Cowboy.http(HelloEcto.Router, [])
  end
end
