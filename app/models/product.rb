class Product < ApplicationRecord
  belongs_to :store
  has_many :product_variants
end
