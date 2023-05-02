class UtilisateursController < ApplicationController
  def new

    @utilisateur = Utilisateur.new()

  end

  def show
    @utilisateur = Utilisateur.find(params[:id])
  end

  def create
    @utilisateur = Utilisateur.new(utilisateur_params)
    # @utilisateur = Utilisateur.new(params[utilisateur_params])
    if @utilisateur.save
      #Do if
      flash[:success] = "Bienvenue!"
      redirect_to @utilisateur
    else
      render 'new'
    end
  end

  private
    def utilisateur_params
      params.require(:utilisateur).permit(:nom, :email, :telephone, :ville, :password, :password_confirmation)
    end

end
