class OrderListItem < ApplicationRecord
	belongs_to :product_variant
	has_many :consumers
end
