module SessionsHelper
    def log_in(utilisateur)
        # recuperer ID et le stocker dans la session
        session[:utilisateur_id] = utilisateur.id
    end

    def utilisateur_courant
        # récupère l'id de l'utilisateur courant
        @utilisateur_courant = @utilisateur_courant || Utilisateur.find_by(id: session[:utilisateur_id])
    end

    def logged_in?
        # is session open?
        !utilisateur_courant.nil?
    end

    def log_out
        session.delete(:utilisateur_id)
        @utilisateur_courant = nil
    end

    def log_out
        session.delete(:utilisateur_id)
        @utilisateur_courant = nil
    end

end
