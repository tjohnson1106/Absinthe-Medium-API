defmodule MediumApiWeb.Resolvers.UserResolver do
  alias MediumApi.Accounts

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end
end
