class Bill < ApplicationRecord
  has_many :product_bills
  has_many :products, through: :product_bills
end
