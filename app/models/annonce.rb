class Annonce < ApplicationRecord
    belongs_to :category
    belongs_to :sub_category
    belongs_to :utilisateur
    include ImageUploader::Attachment(:image)
    self.inheritance_column = 'inheritance_col'

end
