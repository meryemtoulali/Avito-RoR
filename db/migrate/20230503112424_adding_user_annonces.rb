class AddingUserAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :proprietaire, :utilisateurs
  end
end
