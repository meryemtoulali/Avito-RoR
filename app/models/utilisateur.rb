class Utilisateur < ApplicationRecord
    validates :nom, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255}
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :password, presence: true, length: { minimum: 6}, if: :password_required?
    has_secure_password
    has_many :favoris
    has_many :annonces
    has_many :commandes


    def password_required?
        password.present? || password_digest.blank?
    end
end
