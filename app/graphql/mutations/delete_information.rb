class Mutations::DeleteInformation < Mutations::BaseMutation
    argument :id, ID, required: true
    

    type Types::InformationType

    def resolve(id:)
        user = context[:current_user]
        info = Information.find(id)
        return Errors unless info

        info.destroy
    end
end