class Mutations::UpdateInformation < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :birthday, String, required: false
    argument :country, String, required: false
    argument :about_me, String, required: false

    type Types::InformationType

    def resolve(id: nil, **attributes)
        user = context[:current_user]
        
        info = Information.find(id)
        return Errors unless info
        
        #Simply validation if user.id !== info.post_id => not allowed
        if user && (user.id === info.user_id)
            info.update!(**attributes)
            return { info: info }
        else
            puts 'Not allowed'
        end

    end
end