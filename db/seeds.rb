
require 'pp'
require 'open-uri'
json = ActiveSupport::JSON.decode(File.read('db/seeds/contacts-full.json'))


json.each_with_index do |a, i|

  allDetails = ActiveSupport::JSON.decode(File.read("db/seeds/#{i+1}.json"))

  # ----------- Create the contact model and persist --------------------

  contact = Contact.create!(name: a["name"], company: a["company"], image: "image#{i+1}.jpeg", birthdate: Date.today,
              favorite: allDetails.values[1], email: allDetails.values[3], website: allDetails.values[4])

  # ----------- Create the address model, persist and associate to contact --------------------

  address = Address.create!(allDetails.values[5])
  contact.address = address
  contact.save!

  # ----------- Create the phone model, persist and associate to contact --------------------

  phone = Phone.create!(a["phone"])
  contact.phone = phone
  contact.save!

end