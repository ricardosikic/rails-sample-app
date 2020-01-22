module Types
    class UserType < BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :last_name, String, null: false
      field :email, String, null: false
      field :is_admin, Boolean, null: false
      field :posts, [PostType], null: false
      field :information, [InformationType], null: false
    end
  end