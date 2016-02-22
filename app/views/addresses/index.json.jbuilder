json.array!(@addresses) do |address|
  json.extract! address, :id, :people_id, :domicil, :rue, :porte, :email, :contry, :city
  json.url address_url(address, format: :json)
end
