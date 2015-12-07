json.array!(@cadastro_comercios) do |cadastro_comercio|
  json.extract! cadastro_comercio, :id, :nome, :tipo, :endereco, :telefone, :avaliacao
  json.url cadastro_comercio_url(cadastro_comercio, format: :json)
end
