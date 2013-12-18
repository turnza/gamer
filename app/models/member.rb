class Member < ActiveRecord::Base
has_many :order1s
has_secure_password
belongs_to :team
has_many :match1s
has_many :forums
has_many :posts, :dependent => :destroy
has_many :post1s, :dependent => :destroy
validates_presence_of :name  , :gamertag
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
geocoded_by :address
	after_validation :geocode, :if => :address_changed?
def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['Name LIKE  ?', search_condition])
end
end
