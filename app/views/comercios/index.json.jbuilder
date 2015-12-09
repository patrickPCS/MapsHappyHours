json.array!(@comercios) do |comercio|
  json.extract! comercio, :id, :nome, :endereco, :tipo, :tefefone
  json.url comercio_url(comercio, format: :json)
end
