module Types
  class MutationType < Types::BaseObject
    field :add_product_to_bill, mutation: Mutations::AddProductToBill
  end
end
