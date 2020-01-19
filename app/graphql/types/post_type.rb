module Types
    class PostType < BaseObject
        field :id, ID, null: false
        field :title, String, null: false
        field :description, String, null: false 
        field :body, String, null: false
        field :user_id, UserType, null: true, method: :user
    end
end