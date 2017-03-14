json.extract! estado, :id, :nome, :sigla, :patria_id, :created_at, :updated_at
json.url estado_url(estado, format: :json)