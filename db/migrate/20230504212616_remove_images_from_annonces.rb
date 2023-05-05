class RemoveImagesFromAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :images, :string
  end
end
