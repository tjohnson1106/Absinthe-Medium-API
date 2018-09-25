defmodule MediumApiWeb.Schema.Middleware.Authorize do
  @behaviour Absinthe.Middleware

  # resolution is piped through all schema functions
  def call(resolution, role) do
    with %{current_user: current_user} <- resolution.context,
         true <- correct_role?(current_user, role) do
      resolution
    else
      _ ->
        resolution
        |> Absinthe.Resolution.put_result({
          :error,
          "unauthorized"
        })
    end
  end
end
