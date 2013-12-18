class CreateMatch1s < ActiveRecord::Migration
  def change
    create_table :match1s do |t|
      t.string :name
      t.string :time
      t.integer :team_id
      t.integer :member_id
      t.integer :competitor_id
      t.integer :competitor_id
      t.string :game

      t.timestamps
    end
  end
end
