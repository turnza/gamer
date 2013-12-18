class AddStockToStores < ActiveRecord::Migration
  def change
    add_column :lineitem2s, :stock, :integer, default: 1

  end
end
