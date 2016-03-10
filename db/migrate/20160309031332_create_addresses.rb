class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state, limit: 2
      t.string :country, limit: 2
      t.integer :zip
      t.float :latitude
      t.float :longitude
      t.belongs_to :contact, index: true
    end
  end
end
