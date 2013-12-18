class CreateTable1s < ActiveRecord::Migration
  def change
    create_table :table1s do |t|
      t.integer :team_id
      t.string :points

      t.timestamps
    end
  end
end
