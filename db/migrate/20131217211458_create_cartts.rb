class CreateCartts < ActiveRecord::Migration
  def change
    create_table :cartts do |t|

      t.timestamps
    end
  end
end
