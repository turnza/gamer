class Lineitem2 < ActiveRecord::Base
belongs_to :store
belongs_to :order1
belongs_to :cart
def total_price
store.price 
end

end
