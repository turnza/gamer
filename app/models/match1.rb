class Match1 < ActiveRecord::Base
belongs_to :team
belongs_to :member
belongs_to :competitor
has_many :result1s
end
