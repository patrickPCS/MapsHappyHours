json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id, :nome, :email, :dataNascimento, :senha, :confirmeSenha
  json.url cadastro_url(cadastro, format: :json)
end
