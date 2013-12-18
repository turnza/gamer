class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :gamertag
      t.integer :team_id

      t.timestamps
    end
  end
end
