class CreateRegisteredSupplies < ActiveRecord::Migration
  def change
    create_table :registered_supplies do |t|
      t.string :name
      t.string :type
      t.string :unit
      t.text :observations

      t.timestamps
    end
  end
end
