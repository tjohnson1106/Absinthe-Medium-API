defmodule MediumApiWeb.Router do
  use MediumApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MediumApiWeb do
    pipe_through :api
  end
end
