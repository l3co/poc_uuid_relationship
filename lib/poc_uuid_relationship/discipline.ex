defmodule PocUuidRelationship.Discipline do
  use PocUuidRelationship.Schema
  import Ecto.Changeset
  alias PocUuidRelationship.Course

  schema "disciplines" do
    field(:name, :string)
    has_many(:courses, Course)
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:name, :short_name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
