defmodule MediumApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MediumApiWeb.Schema.Types

  import_types(Types.Usertype)
  import_types(Types.SessionType)
end
