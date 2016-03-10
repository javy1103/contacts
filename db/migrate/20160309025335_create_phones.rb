class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :work
      t.string :home
      t.string :mobile
      t.belongs_to :contact, index: true
    end
  end
end
