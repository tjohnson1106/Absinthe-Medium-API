defmodule MediumApiWeb.Schema do
  use Absinthe.Schema

  alias MediumApiWeb.Resolvers

  # import Types

  import_types(MediumApiWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field(:users, list_of(:user_type)) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end
end
