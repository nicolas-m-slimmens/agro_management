class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.string :name
      t.float :area
      t.references :field, index: true
      t.references :crop, index: true
      t.references :soil_survey, index: true

      t.timestamps
    end
  end
end
