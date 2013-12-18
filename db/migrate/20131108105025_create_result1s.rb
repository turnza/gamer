class CreateResult1s < ActiveRecord::Migration
  def change
    create_table :result1s do |t|
      t.integer :match1_id
      t.string :team_score
      t.string :competitor_score

      t.timestamps
    end
  end
end
