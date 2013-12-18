class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :shop_id
      t.integer :cartt_id

      t.timestamps
    end
  end
end
