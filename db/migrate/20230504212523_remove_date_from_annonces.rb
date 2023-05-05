class RemoveDateFromAnnonces < ActiveRecord::Migration[6.1]
  def change
    remove_column :annonces, :date, :string
  end
end
