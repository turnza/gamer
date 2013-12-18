class AddPasswordDigestToAdmin1s < ActiveRecord::Migration
  def change
    add_column :admin1s, :password_digest, :string

  end
end
