class AddImageDataToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_column :annonces, :image_data, :text
  end
end
