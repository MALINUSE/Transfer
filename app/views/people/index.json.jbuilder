json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :date_nai, :lieu_nai
  json.url person_url(person, format: :json)
end
