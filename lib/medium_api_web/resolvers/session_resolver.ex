defmodule MediumApiWeb.Resolvers.SessionResolver do
  def login_user(_, %{input: input}, _) do
    # check for user in database if registered return token and user
    {:ok, %{token: jwt_token, user: user}}
  end
end
