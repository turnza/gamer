class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :member_id
      t.integer :result1_id

      t.timestamps
    end
  end
end
