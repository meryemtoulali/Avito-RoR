class PagesController < ApplicationController
before_action :set_carousels, only: %i[ home ]

  def home
  end

  private
    def set_carousels
      @annonces_immobilier = Annonce.select { |annonce| annonce.category.id == 3 }.first(10)
      @annonces_vehicules = Annonce.select { |annonce| annonce.category.id == 2 }.first(10)
      @annonces_loisirs = Annonce.select { |annonce| annonce.category.id == 6 }.first(10)


    end
end
