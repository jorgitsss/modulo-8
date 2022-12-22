json.extract! noticia, :id, :titulo, :contenido, :link, :tipo, :estado, :created_at, :updated_at
json.url noticia_url(noticia, format: :json)
