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
        if post
            post.update(**attributes)

            { post: post }
        end
    end
end