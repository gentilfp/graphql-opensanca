class Product < ApplicationRecord
  has_many :product_bills
  has_many :bills, through: :product_bills
end
