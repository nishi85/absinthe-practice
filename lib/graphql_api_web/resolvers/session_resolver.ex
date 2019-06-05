defmodule GraphqlApiWeb.Resolvers.SessionResolver do

  def login_user(_,%{input: input},_) do
    # check if user in in our databse
    # if a user is registered we wanna return a token
    # and we want to return the user
    {:ok, %{token: jwt_token, user: user}}
  end
end
