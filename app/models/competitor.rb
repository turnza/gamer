class Competitor < ActiveRecord::Base
has_many :match1s
validates_presence_of :team  , :gamertag
has_secure_password

end
