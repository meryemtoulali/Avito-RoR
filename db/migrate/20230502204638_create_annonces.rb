class CreateAnnonces < ActiveRecord::Migration[6.1]
  def change
    create_table :annonces do |t|
      t.string :titre
      t.string :ville
      t.string :date
      t.string :images
      t.float :prix
      t.string :type
      t.string :secteur
      t.string :description

      t.timestamps
    end
  end
end
