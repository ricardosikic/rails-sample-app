class Mutations::CreatePost < Mutations::BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true
    argument :body, String, required: true

    type Types::PostType

    def resolve(title: nil, description: nil, body: nil)
        post = Post.create!(
            title: title,
            description: description,
            body: body,
            user: context[:current_user]
        )

        { post: post }
    end
end