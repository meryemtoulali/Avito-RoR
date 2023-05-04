class PagesController < ApplicationController
before_action :set_annonces, only: %i[ home ]

  def home
  end

  private
    def set_annonces
      @annonces = Annonce.all
    end
end
