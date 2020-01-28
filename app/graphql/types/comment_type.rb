module Types
    class CommentType < BaseObject
        field :id, ID, null: false
        field :body, String, null: false
        field :user_id, UserType, null: true, method: :user
        field :post_id, PostType, null: true
    end
end