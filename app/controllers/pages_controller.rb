class PagesController < ApplicationController
before_action :set_carousels, only: %i[ home ]
before_action :verifier_est_admin?, only: %i[admin_control]

  def home
  end

  def admin_control
  end

  private
    def set_carousels
      @annonces_immobilier = Annonce.select { |annonce| annonce.category.id == 3 }.first(10)
      @annonces_vehicules = Annonce.select { |annonce| annonce.category.id == 2 }.first(10)
      @annonces_tech = Annonce.select { |annonce| annonce.category.id == 1 }.first(10)


    end
end
