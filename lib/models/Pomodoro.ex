defmodule Pomodoro do
  use Ecto.Model

  schema "pomodoro" do
    has_many          :pomodoro_tasks, PomodoroTask
    field :startedAt, :string
    field :minutes,   :integer
    field :type,      :string
    timestamps
  end
end
