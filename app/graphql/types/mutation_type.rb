module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :signout_user, mutation: Mutations::SignOutUser
    field :create_post, mutation: Mutations::CreatePost
    field :delete_post, mutation: Mutations::DeletePost
    field :update_post, mutation: Mutations::UpdatePost
    field :create_information, mutation: Mutations::CreateInformation
    field :delete_information, mutation: Mutations::DeleteInformation
    field :update_information, mutation: Mutations::UpdateInformation
  end
end
