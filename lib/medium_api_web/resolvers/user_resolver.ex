defmodule MediumApiWeb.Resolvers.UserResolver do
  alias MediumApi.Accounts

  def user(_, _, _) do
    {:ok, Accounts.list_users()}
  end
end
