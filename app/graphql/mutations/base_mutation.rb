module Mutations
    class BaseMutation < GraphQL::Schema::RelayClassicMutation
      input_object_class Types::BaseInputObject
      object_class Types::BaseObject
    end
  end