defmodule MediumApiWeb.Schema.Types.Usertype do
  use Absinthe.Schema.Notation

  object :user_type do
    field(:id, :id)
    field(:first_name, :string)
    field(:last_name, :string)
    field(:email, :string)
    field(:role, :string)
  end
end
