module Types
  class ProductType < Types::BaseObject
    description 'Product description'

    field :name, String, 'Product name', null: false
    field :price, Int, 'Product price', null: false
  end
end
