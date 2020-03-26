defmodule PocUuidRelationship.Repo.Migrations.CreateSchemaDiciplines do
  use Ecto.Migration

  def change do
    create table(:disciplines, primary_key: false)do
      add :uuid, :uuid, primary_key: true
      add :name, :string
    end
  end
end
