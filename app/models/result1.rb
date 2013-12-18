class Result1 < ActiveRecord::Base
belongs_to :match1
has_many :posts, :dependent => :destroy
end
