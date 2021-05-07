class ProductVariant < ApplicationRecord
  belongs_to :product
  has_many :order_list_items
end
