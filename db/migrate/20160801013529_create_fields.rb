class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :address
      t.string :locality
      t.string :province
      t.string :country
      t.float :area
      t.boolean :own
      t.text :observations
      t.integer :owner_contact
      t.integer :manager_contact

      t.timestamps
    end
  end
end
