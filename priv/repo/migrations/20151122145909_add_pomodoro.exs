defmodule HelloEcto.Repo.Migrations.AddPomodoro do
  use Ecto.Migration

  def up do
    create table(:pomodoro) do
      add :startedAt, :string
      add :minutes,   :integer
      add :type,      :string
      timestamps
    end
  end

  def down do
    drop table(:pomodoro)
  end
end
