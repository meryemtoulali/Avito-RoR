json.extract! commande, :id, :nom, :email, :telephone, :adresse, :methode_paiement, :prix, :utilisateur_id, :annonce_id, :created_at, :updated_at
json.url commande_url(commande, format: :json)
