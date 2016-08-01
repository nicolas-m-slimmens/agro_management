class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :last_name
      t.string :telephone_number
      t.string :address
      t.string :locality
      t.string :province
      t.string :email_address
      t.text :observations

      t.timestamps
    end
  end
end
