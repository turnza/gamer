class Order1 < ActiveRecord::Base
	has_many :lineitem2s
	belongs_to :store
	
	def add_lineitem2s_from_cart(cart)
		cart.lineitem2s.each do|item|
			item.cart_id = nil
			lineitem2s<<item
		end
	
end

end
