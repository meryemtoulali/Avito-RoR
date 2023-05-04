class RemoveProprietaireFromAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :proprietaire, :string
  end
end
