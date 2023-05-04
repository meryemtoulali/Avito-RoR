class RemoveSecteurFromAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :secteur, :string
  end
end
