class Mutations::UpdatePost < Mutations::BaseMutation
    argument :id, String, required: true
    argument :title, String, required: false
    argument :description, String, required: false
    argument :body, String, required: false
    
    type Types::PostType

    def resolve(id: nil, **attributes)
        user = context[:current_user]
        return Errors unless user

        post = Post.find(id)
        return Errors unless post

        if user && (user.id === post.user_id)
            post.update(**attributes)
            return { post: post }
        else
            puts 'Not allowed'
        end
    end
end





