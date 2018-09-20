defmodule MediumApiWeb.Router do
  use MediumApiWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, MediumApiWeb.Schema)

    if Mix.env() = :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, MediumApiWeb.Schema)
    end
  end
end
