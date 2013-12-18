class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :product
      t.string :picture
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
