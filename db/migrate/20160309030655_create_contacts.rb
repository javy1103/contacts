class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :image
      t.date :birthdate
      t.boolean :favorite
      t.string :email
      t.string :website
    end
  end
end
