class Cartt < ActiveRecord::Base
has_many :line_items, dependent: :destroy
end
