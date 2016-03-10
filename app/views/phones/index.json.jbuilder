json.array!(@phones) do |phone|
  json.extract! phone, :id, :work, :home, :mobile
  json.url phone_url(phone, format: :json)
end
