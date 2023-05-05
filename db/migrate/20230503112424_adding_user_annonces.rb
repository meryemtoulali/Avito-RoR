class AddingUserAnnonces < ActiveRecord::Migration[6.1]
  def change
    add_reference :annonces, :utilisateur, foreign_key: true
  end
end
