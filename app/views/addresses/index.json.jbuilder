json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :state, :country, :zip, :latitude, :longitude
  json.url address_url(address, format: :json)
end
