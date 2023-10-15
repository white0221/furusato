# frozen_string_literal: true

module Types
  # Types::FurusatoTaxPaymentType
  class FurusatoTaxPaymentType < Types::BaseObject
    field :id, ID, null: false
    field :government_name, String, null: false
    field :payment_date, GraphQL::Types::ISO8601Date, null: false
    field :amount, Integer, null: false
    field :url, String
    field :memo, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
