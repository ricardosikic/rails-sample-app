class Mutations::DeletePost < Mutations::BaseMutation
    argument :id, ID, required: true

    type Types::PostType
    
    def resolve(id: nil)
        user = context[:current_user]
        return Errors unless user
        
        post_id = Post.find(id)
        return Errors unless post_id

        if user && (user.id === post_id.user_id || user.is_admin == true)
            post_id.destroy
            return { post_id: post_id }
        else
            puts 'Not allowed to delete'
        end
    end

end

