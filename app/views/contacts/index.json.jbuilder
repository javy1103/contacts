json.array!(@contacts) do |contact|

    json.name contact.name
    json.employeeId contact.id
    json.company contact.company
    json.detailsURL contact_url(contact, format: :json)
    json.smallImageURL contact.smallImageURL
    json.birthdate contact.birthdate

  json.phone do
    json.work contact.phone.work
    json.home contact.phone.home
    json.mobile contact.phone.mobile
  end

end
