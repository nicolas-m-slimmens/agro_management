class CreateSoilSurveys < ActiveRecord::Migration
  def change
    create_table :soil_surveys do |t|
      t.float :organic_carbon
      t.float :organic_material
      t.float :total_nitrogen
      t.float :nitrate
      t.float :nitrate_nitrogens
      t.float :comparable_fosforo
      t.float :calcium
      t.float :magnesium
      t.float :ph
      t.float :carbon_nitrogen
      t.float :calcium_magnesium
      t.float :conductivity
      t.float :sulfur
      t.float :hardness_of_water
      t.float :water_ph
      t.references :parcel, index: true
      t.references :provider, index: true

      t.timestamps
    end
  end
end
