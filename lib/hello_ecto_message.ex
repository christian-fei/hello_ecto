defmodule Message do
  use Ecto.Model

  schema "message" do
    field :text,    :string
    field :author,  :string
    timestamps
  end
end
