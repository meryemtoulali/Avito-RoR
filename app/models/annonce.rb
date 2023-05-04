class Annonce < ApplicationRecord
    belongs_to :category
    include ImageUploader::Attachment(:image)
    self.inheritance_column = 'inheritance_col'

end
