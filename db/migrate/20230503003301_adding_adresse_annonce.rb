class AddingAdresseAnnonce < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :adresse, :string
  end
end
