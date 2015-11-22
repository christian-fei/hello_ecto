defmodule HelloEcto.Repo.Migrations.AddPomodoroTask do
  use Ecto.Migration

  def up do
    create table(:pomodoro_task) do
      add :pomodoro_id,   references :pomodoro
      add :text,          :string
      add :completed,     :boolean
      timestamps
    end
  end

  def down do
    drop table(:pomodoro_task)
  end
end
