class Cart < ActiveRecord::Base
has_many :lineitem2s, dependent: :destroy
def total_price
lineitem2s.to_a.sum { |item| item.total_price }
end

end
