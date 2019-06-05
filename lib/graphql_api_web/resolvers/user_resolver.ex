defmodule GraphqlApiWeb.Resolvers.UserResolver do
  alias GraphqlApi.Accounts

  def users(_,_,_) do
    {:ok, Accounts.list_users}
  end

  def register_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end
end
