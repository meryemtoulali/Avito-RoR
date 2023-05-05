class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :annonces
end
