defmodule PocUuidRelationship.Course do
  use PocUuidRelationship.Schema
  import Ecto.Changeset
  alias PocUuidRelationship.Discipline

  schema "courses" do
    field(:name, :string)

    belongs_to(:discipline, Discipline,
      foreign_key: :discipline_uuid,
      references: :uuid,
      primary_key: true
    )
  end

  def changeset(course, attrs \\ %{}) do
    course
    |> cast(attrs, [:name, :discipline_uuid])
    |> validate_required([:name, :discipline_uuid])
    |> foreign_key_constraint(:discipline_uuid)
  end
end
