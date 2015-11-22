defmodule HelloEcto.Repo do
  use Ecto.Repo, otp_app: :hello_ecto
  import Ecto.Query

  def all_pomodoro do
    all(from pomodoro in Pomodoro, select: pomodoro)
  end
end
