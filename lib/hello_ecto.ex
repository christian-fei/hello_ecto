defmodule HelloEcto do
  use Application

  def start(_type, _args) do
    HelloEcto.Supervisor.start_link
  end
end
