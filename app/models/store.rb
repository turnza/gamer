class Store < ActiveRecord::Base
mount_uploader :image, ImageUploader
has_many :lineitem2s
has_many :order1s, through: :lineitem2s
 before_destroy :ensure_not_referenced_by_any_lineitem2
#...
 private
 # ensure that there are no line items referencing this product
 def ensure_not_referenced_by_any_lineitem2
     if lineitem2s.empty?
      return true
       else
        errors.add(:base, 'Line Items present')
       return false
        end
    end
end







