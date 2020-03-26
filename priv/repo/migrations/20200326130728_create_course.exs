defmodule PocUuidRelationship.Repo.Migrations.CreateCourse do
  use Ecto.Migration

  def change do
    create table(:courses, primary_key: false) do
      add :uuid, :uuid, primary_key: true
      add :name, :string

      add :discipline_uuid, references(:disciplines, type: :uuid, column: :uuid)
    end
  end
end
