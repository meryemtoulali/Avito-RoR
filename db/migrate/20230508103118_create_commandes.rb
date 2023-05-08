class CreateCommandes < ActiveRecord::Migration[6.1]
  def change
    create_table :commandes do |t|
      t.string :nom
      t.string :email
      t.string :telephone
      t.string :adresse
      t.string :methode_paiement
      t.float :prix
      t.references :utilisateur, null: false, foreign_key: true
      t.references :annonce, null: false, foreign_key: true

      t.timestamps
    end
  end
end
