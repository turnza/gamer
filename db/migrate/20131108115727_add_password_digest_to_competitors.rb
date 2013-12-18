class AddPasswordDigestToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :password_digest, :string

  end
end
