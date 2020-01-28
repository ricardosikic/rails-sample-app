class Mutations::CreateComment < Mutations::BaseMutation
    argument :post_id, ID, required: true
    argument :user_id, ID, required: false
    argument :body, String, required: true

    
    type Types::CommentType

    def resolve(body: nil, post_id: nil)
        user = context[:current_user]
       
        post_id = Post.find(post_id)
        comment = post_id.comments.create!(
            body: body,
            user: context[:current_user]
        )  
        
        return { comment: comment }
    end
end