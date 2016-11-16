defmodule Mix.Tasks.Exkill.Mongo.Seed do
  use Mix.Tasks

  @shortdoc "Seed a mongo database with zkill data"

  @moduledoc """
  Seed the database with data from zkillboard.
  It will seed the data from 20/06/2016 to 30/06/2016 by default

  The database should be configured in the current app configuration

  ## Examples

    mix exkill.mongo.seed
  """

  @doc false
  def run(_) do
    app = Mix.Project.config[:app]

    repos = Application.get_env(app, :mongo_repos)

    Enum.each(repos, &seeding_repos/1)

    Mix.shell.info "Done"
  end

  defp seeding_repo(repo) do

  end
end
