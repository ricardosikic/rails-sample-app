class Mutations::CreateUser < Mutations::BaseMutation

    class AuthProviderSignupData < Types::BaseInputObject
    argument :email, Types::AuthProviderEmailInput, required: false
    end

    argument :name, String, required: true
    argument :last_name, String, required: true
    argument :is_admin, Boolean, required: true
    argument :auth_provider, AuthProviderSignupData, required: false

    type Types::UserType

    def resolve(name: nil, last_name:nil, is_admin: nil, auth_provider: nil)
    user = User.create!(
        name: name,
        last_name: last_name,
        is_admin: is_admin,
        email: auth_provider&.[](:email)&.[](:email),
        password: auth_provider&.[](:email)&.[](:password)
    )
    { user: user }
    end
end
