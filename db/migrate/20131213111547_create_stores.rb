class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :product
      t.string :picture
      t.float :price

      t.timestamps
    end
  end
end
