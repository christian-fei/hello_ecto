defmodule PomodoroTask do
  use Ecto.Model

  schema "pomodoro_task" do
    field :text,      :string
    field :completed, :boolean
    timestamps
  end
end
