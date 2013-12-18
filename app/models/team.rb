class Team < ActiveRecord::Base
has_many :members
has_one :table1
has_many :match1s
mount_uploader :image, ImageUploader
validates_presence_of :name , :arena , :logo
def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['Name LIKE  ?', search_condition])
end
end
