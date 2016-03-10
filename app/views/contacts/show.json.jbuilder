json.employeeId @contact.id
json.favorite @contact.favorite
json.largeImageURL @contact.largeImageURL
json.email @contact.email
json.website @contact.website

json.address do
  json.street @contact.address.street
  json.city @contact.address.city
  json.state @contact.address.state
  json.country @contact.address.country
  json.zip @contact.address.zip
  json.latitude @contact.address.latitude
  json.longitude @contact.address.longitude
end