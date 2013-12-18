class Forum < ActiveRecord::Base
belongs_to :member
has_many :post1s, :dependent => :destroy
end
