module Types
  class ProductType < Types::BaseObject
    description 'Product description'

    field :name, String, null: true
    field :price, Int, 'Product price', null: false
    field :quantity, Int, null: true

    def quantity
      ProductBill.find_by(product_id: object, bill: context[:bill]).quantity
    end
  end
end
