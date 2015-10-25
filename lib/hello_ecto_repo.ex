defmodule HelloEcto.Repo do
  use Ecto.Repo, otp_app: :hello_ecto
  import Ecto.Query

  def all_messages do
    query = from m in Message,
         select: m
    all(query)
  end
end
