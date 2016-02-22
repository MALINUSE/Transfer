json.array!(@sim_cartes) do |sim_carte|
  json.extract! sim_carte, :id, :numero
  json.url sim_carte_url(sim_carte, format: :json)
end
