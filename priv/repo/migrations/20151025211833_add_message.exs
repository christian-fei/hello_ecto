defmodule HelloEcto.Repo.Migrations.AddMessage do
  use Ecto.Migration

  def up do
    create table(:message) do
      add :text, :string
      add :author,   :string
      timestamps
    end
  end

  def down do
    drop table(:message)
  end
end
