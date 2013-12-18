class CreateLineitem2s < ActiveRecord::Migration
  def change
    create_table :lineitem2s do |t|
      t.integer :store_id
      t.integer :order_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
