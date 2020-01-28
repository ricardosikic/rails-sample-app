class Mutations::DeleteComment < Mutations::BaseMutation
    argument :id, ID, required: true

    type Types::CommentType

    def resolve(id: nil)
        user = context[:current_user]
        comment = Comment.find(id)
        return Errors unless comment 
        if user && (user.id === comment.user_id || user.is_admin == true)
            comment.destroy
            return { comment: comment }
        else 
            puts 'Not allowed'
        end
    end
end