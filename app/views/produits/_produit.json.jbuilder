json.extract! produit, :id, :Nom, :Description, :Prix, :Image, :created_at, :updated_at
json.url produit_url(produit, format: :json)
