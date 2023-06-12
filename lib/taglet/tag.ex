defmodule Taglet.Tag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tags" do
    field(:name, :string)

    has_many(:taggings, Taglet.Tagging)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required(:name)
  end
end
