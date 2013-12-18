class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :team
      t.string :gamertag

      t.timestamps
    end
  end
end
