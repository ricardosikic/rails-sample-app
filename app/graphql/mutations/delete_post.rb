class Mutations::DeletePost < Mutations::BaseMutation
    argument :id, ID, required: true

    type Types::PostType
    
    def resolve(id: nil)
        user = context[:current_user]
        return Errors unless user
        
        post_id = Post.find(id)
        return Errors unless post_id

        post_id.destroy

        { post_id: post_id }
    end

end