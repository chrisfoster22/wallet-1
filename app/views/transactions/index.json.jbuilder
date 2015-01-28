json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :name, :amount
  json.url transaction_url(transaction, format: :json)
end
