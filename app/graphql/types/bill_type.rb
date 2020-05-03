module Types
  class BillType < Types::BaseObject
    description 'Description of a Bill'

    field :status, String, "Open or closed", null: false
    field :people_number, Int, "Number of people at the table", null: false
    field :total, Int, "Bill value", null: false
    field :products, [Types::ProductType], "Product type", null: true

    def products
      context.scoped_set!(:bill, object)
      object.products
    end
  end
end
