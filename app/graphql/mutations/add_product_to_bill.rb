# frozen_string_literal: true

module Mutations
  class AddProductToBill < Mutations::BaseMutation
    class BillNotFound < StandardError; end
    class BillIsClosed < StandardError; end
    class ProductNotFound < StandardError; end
    class QuantityCantBeZero < StandardError; end

    description 'Add a product to a current bill'

    argument :product_name, String, required: true
    argument :bill_id, Integer, required: true
    argument :quantity, Integer, required: true

    type Types::BillType

    def resolve(**args)
      bill = Bill.find(args[:bill_id])
      raise BillNotFound unless bill
      raise BillIsClosed unless bill.status == 'open'

      product = Product.find_by(name: args[:product_name])
      raise ProductNotFound unless product

      quantity = args[:quantity]
      raise QuantityCantBeZero unless quantity > 0

      ProductBill.create(bill: bill, product: product, quantity: quantity)

      bill
    end
  end
end
