class Mutations::SignOutUser < Mutations::BaseMutation
    
    def resolve()
        user = context[:current_user]
        if context[:session].delete(:token)
           puts 'logged out'
        end
    end
end