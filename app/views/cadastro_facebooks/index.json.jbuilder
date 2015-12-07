json.array!(@cadastro_facebooks) do |cadastro_facebook|
  json.extract! cadastro_facebook, :id, :email, :senha
  json.url cadastro_facebook_url(cadastro_facebook, format: :json)
end
