class CreateFertilizations < ActiveRecord::Migration
  def change
    create_table :fertilizations do |t|
      t.references :parcel, index: true
      t.date :campaing
      t.references :registered_supply, index: true
      t.references :provider, index: true
      t.string :type
      t.date :applied_at
      t.float :affected_area
      t.float :units_per_hectare
      t.float :price_per_unit
      t.text :observations

      t.timestamps
    end
  end
end
