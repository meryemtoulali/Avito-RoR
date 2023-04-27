class Utilisateur < ApplicationRecord
    has_secure_password
    validates :nom, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255}
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :password, presence: true, length: { minimum: 6}

    

end
