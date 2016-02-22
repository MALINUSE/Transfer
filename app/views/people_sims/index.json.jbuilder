json.array!(@people_sims) do |people_sim|
  json.extract! people_sim, :id, :people_id, :sim_carte_id
  json.url people_sim_url(people_sim, format: :json)
end
