class Admin1 < ActiveRecord::Base
has_secure_password
validates_presence_of :name  
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
end
