class Category < ApplicationRecord
    validates :nom, presence: true, uniqueness: true
    has_many :annonces
    has_many :sub_categories
    
end
