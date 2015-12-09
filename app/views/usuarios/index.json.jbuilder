json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :email, :DataNascimento, :senha, :ConfirmeSenha
  json.url usuario_url(usuario, format: :json)
end
