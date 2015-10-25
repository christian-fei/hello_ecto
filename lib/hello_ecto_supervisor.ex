defmodule HelloEcto.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
      worker(HelloEcto.Worker, []),
      worker(HelloEcto.Repo, []),
    ]
    supervise(children, strategy: :one_for_one)
  end
end
