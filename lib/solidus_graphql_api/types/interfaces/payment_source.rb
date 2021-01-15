# frozen_string_literal: true

module SolidusGraphqlApi
  module Types
    module Interfaces
      module PaymentSource
        include Types::Base::Interface

        orphan_types(*SolidusGraphqlApi.configuration.payment_sources.map(&:constantize))

        description "Payment Source."

        field :created_at, GraphQL::Types::ISO8601DateTime, null: true
        field :payment_method, Types::PaymentMethod, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
        field :gateway_customer_profile_id, String, null: true
        field :gateway_payment_profile_id, String, null: true
      end
    end
  end
end
