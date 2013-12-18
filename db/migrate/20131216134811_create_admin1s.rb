class CreateAdmin1s < ActiveRecord::Migration
  def change
    create_table :admin1s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
