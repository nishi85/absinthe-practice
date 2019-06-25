defmodule GraphqlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias GraphqlApiWeb.Schema.Types

  import_types(Types.Usertype)
  import_types(Types.SessionType)
  import_types(Types.PostType)
  import_types(Types.CommentType)
end
