class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :arena
      t.string :logo

      t.timestamps
    end
  end
end
