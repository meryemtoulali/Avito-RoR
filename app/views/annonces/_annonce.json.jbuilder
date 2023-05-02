json.extract! annonce, :id, :titre, :ville, :date, :images, :prix, :type, :secteur, :description, :created_at, :updated_at
json.url annonce_url(annonce, format: :json)
