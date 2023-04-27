class UtilisateursController < ApplicationController
  def new
  end

  def show
    @utilisateur = Utilisateur.find(params[:id])
  end

  private
    def utilisateur_params
      params.require(:utilisateur).permit(:nom, :email, :telephone, :ville, :password, :password_confirmation)
    end
end
