class UtilisateursController < ApplicationController
  before_action :authenticate, :only => [:edit, :update]
  before_action :bon_utilisateur, only: [:edit, :update]

  def new

    @utilisateur = Utilisateur.new()

  end

  def show
    @utilisateur = Utilisateur.find(params[:id])
    @annonces = @utilisateur.annonces
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

  def edit
    @utilisateur = Utilisateur.find(params[:id])
  end

  def update
    @utilisateur = Utilisateur.find(params[:id])
    if @utilisateur.update(utilisateur_params)
      flash[:success] = "Profil actualise avec success"
    else
      render 'edit'
    end
  end

  def authenticate
    unless logged_in?
      flash[:danger] = "Merci de se connecter."
      redirect_to login_url
    end
  end

  def  bon_utilisateur
    @utilisateur = Utilisateur.find(params[:id])
    redirect_to(root_url) unless @utilisateur == @utilisateur_courant
  end

  private
    def utilisateur_params
      params.require(:utilisateur).permit(:nom, :email, :telephone, :ville, :password, :password_confirmation)
    end

end
