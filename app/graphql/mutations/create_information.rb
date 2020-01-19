class Mutations::CreateInformation < Mutations::BaseMutation
    argument :birthday, String, required: false
    argument :country, String, required: false
    argument :about_me, String, required: false

    type Types::InformationType

    def resolve(birthday: nil, country: nil, about_me: nil)
        info = Information.create!(
            birthday: birthday,
            country: country,
            about_me: about_me,
            user: context[:current_user]
        )

        { info: info }
    end
end