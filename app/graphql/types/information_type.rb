module Types
    class InformationType < BaseObject
        field :id, ID, null: false
        field :user_id, UserType, null: true
        field :birthday, String, null: false
        field :country, String, null: false
        field :about_me, String, null: false
    end
end