json.array!(@facebooks) do |facebook|
  json.extract! facebook, :id, :email, :senha
  json.url facebook_url(facebook, format: :json)
end
