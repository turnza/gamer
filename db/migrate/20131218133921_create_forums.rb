class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :Title
      t.string :Content
      t.integer :member_id

      t.timestamps
    end
  end
end
