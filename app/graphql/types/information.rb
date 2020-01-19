module Type
    class InformationType < BaseObject
        field :id, ID, null: false
        field :user_id, Types::UserType, null: false
        field :birthday, String, null: false
        field :country, String, null: false
        field :about_me, String, null: false
    end
end