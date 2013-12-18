class CreateOrder1s < ActiveRecord::Migration
  def change
    create_table :order1s do |t|
      t.integer :member_id
      t.string :paymethod
      t.decimal :total

      t.timestamps
    end
  end
end
