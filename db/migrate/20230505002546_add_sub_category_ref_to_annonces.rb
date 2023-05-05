class AddSubCategoryRefToAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_reference :annonces, :sub_category, null: false, foreign_key: true
  end
end
