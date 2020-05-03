module Types
  class QueryType < Types::BaseObject
    field :bills, resolver: Resolvers::Bills
  end
end
