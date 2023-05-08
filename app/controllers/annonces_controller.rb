class AnnoncesController < ApplicationController
  before_action :set_annonce, only: %i[ show edit update destroy like dislike]
  before_action :authenticate, only: %i[ new edit update destroy like dislike]
  before_action :est_proprietaire_ou_admin?, only: %i[ edit update destroy ]



  # GET /annonces or /annonces.json
  def index
    @annonces = Annonce.all
  end

  # GET /annonces/1 or /annonces/1.json
  def show
  end

  # GET /annonces/new
  def new
    @annonce = Annonce.new
  end

  # GET /annonces/1/edit
  def edit
  end

  # POST /annonces or /annonces.json
  def create
    @annonce = utilisateur_courant.annonces.build(annonce_params)

    respond_to do |format|
      if @annonce.save
        format.html { redirect_to annonce_url(@annonce), notice: "Annonce was successfully created." }
        format.json { render :show, status: :created, location: @annonce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annonces/1 or /annonces/1.json
  def update
    respond_to do |format|
      if @annonce.update(annonce_params)
        format.html { redirect_to annonce_url(@annonce), notice: "Annonce was successfully updated." }
        format.json { render :show, status: :ok, location: @annonce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annonces/1 or /annonces/1.json
  def destroy
    @annonce.destroy

    respond_to do |format|
      format.html { redirect_to annonces_url, notice: "Annonce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
      query = []
      if(!params[:search].blank?)
        query.append("titre LIKE '%#{params[:search].downcase}%'")
      end
      if(!params[:category_id].blank?)
        query.append("category_id = #{params[:category_id]}")
      end
      if(!params[:sub_category_id].blank?)
        query.append("sub_category_id = #{params[:sub_category_id]}")
      end
      if(!params[:ville].blank?)
        query.append("ville LIKE '%#{params[:ville].downcase}%'")
      end
      if(!params[:annonce_type].blank?)
        query.append("annonce_type LIKE '%#{params[:annonce_type].downcase}%'")
      end

      if(query.length == 0)
        @query = ""
      elsif (query.length == 1)
        @query = query[0]
      else
        @query = query.join(" and ")
      end
      @results = Annonce.all.where(@query)


  end

  def est_proprietaire_ou_admin?
      if(@annonce.utilisateur == utilisateur_courant) then return true
      elsif(utilisateur_courant.admin?) then return true
      else redirect_to(root_path)
      end
  end

  def like
    favori = Favori.new(utilisateur: utilisateur_courant, annonce: @annonce)
    if favori.save
      flash[:success] = "Added to favorites!"
    else
      flash[:error] = "Could not add to favorites."
    end
    redirect_to annonce_path(@annonce)
  end

  def dislike
    utilisateur_courant.favoris.find_by(annonce_id: @annonce.id).destroy
    redirect_to annonce_path(@annonce)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonce
      @annonce = Annonce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def annonce_params
      params.require(:annonce).permit(:titre, :ville, :image, :prix, :type_annonce, :description, :adresse, :category_id, :sub_category_id)
    end
end
