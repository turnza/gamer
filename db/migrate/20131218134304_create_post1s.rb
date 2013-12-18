class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.text :content
      t.integer :member_id
      t.integer :forum_id

      t.timestamps
    end
  end
end
