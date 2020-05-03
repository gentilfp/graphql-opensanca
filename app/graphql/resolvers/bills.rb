# frozen_string_literal: true

module Resolvers
  class Bills < GraphQL::Schema::Resolver
    description 'Get list of bills'

    type [Types::BillType], null: true

    argument :status, String, required: false

    def resolve(**args)
      if args[:status]
        Bill.where(status: args[:status])
      else
        Bill.all
      end
    end
  end
end
