class Store < ApplicationRecord
	has_many :products

	#Nested query
	#Store.joins(products: [product_variants: [order_list_items: :consumers]])

	# SELECT "stores".* FROM "stores" 
	# INNER JOIN "products" 
	# ON "products"."store_id" = "stores"."id" 
	# INNER JOIN "product_variants" 
	# ON "product_variants"."product_id" = "products"."id" 
	# INNER JOIN "order_list_items" 
	# ON "order_list_items"."product_variant_id" = "product_variants"."id" 
	# INNER JOIN "consumers" 
	# ON "consumers"."order_list_item_id" = "order_list_items"."id";
end
