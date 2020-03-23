defmodule PocUuidRelationship.Repo do
  use Ecto.Repo,
    otp_app: :poc_uuid_relationship,
    adapter: Ecto.Adapters.Postgres
end
