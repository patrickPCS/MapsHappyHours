json.array!(@localizacaos) do |localizacao|
  json.extract! localizacao, :id, :latitude, :longitude, :elevacao
  json.url localizacao_url(localizacao, format: :json)
end
