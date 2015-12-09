json.array!(@avaliacaos) do |avaliacao|
  json.extract! avaliacao, :id, :alimentacao, :atendimento, :ambiente, :comercio_id
  json.url avaliacao_url(avaliacao, format: :json)
end
