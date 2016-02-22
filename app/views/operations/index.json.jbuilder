json.array!(@operations) do |operation|
  json.extract! operation, :id, :number_owner, :number_sender, :type_op
  json.url operation_url(operation, format: :json)
end
