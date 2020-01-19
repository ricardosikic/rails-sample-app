module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: true

    def users
      User.all
    end

    field :user, Types::UserType, null: true

    def user(id:)
      user = User.find(id)
      return user
    end
    
    field :posts, [Types::PostType], null: true

    def posts
      Post.all
    end

    field :post, Types::PostType, null: true

    def post(id:)
      post = User.find(id)
      return post
    end
    
  end
end
