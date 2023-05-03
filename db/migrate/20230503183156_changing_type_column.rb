class ChangingTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :annonces, :type, :annonce_type
  end
end
