# frozen_string_literal: true

module Types
  # Types::BaseInputObject
  class BaseInputObject < GraphQL::Schema::InputObject
    argument_class Types::BaseArgument
  end
end
