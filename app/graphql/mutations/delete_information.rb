class Mutations::DeleteInformation < Mutations::BaseMutation
    argument :id, ID, required: true
    
    type Types::InformationType

    def resolve(id:)
        user = context[:current_user]
        info = Information.find(id)
        return Errors unless info

        if user && (user.id === info.user_id || user.is_admin == true)
            info.destroy
            return { info: info }
        else
            puts 'Not allowed'
        end
    end
end