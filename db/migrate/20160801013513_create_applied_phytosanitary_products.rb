class CreateAppliedPhytosanitaryProducts < ActiveRecord::Migration
  def change
    create_table :applied_phytosanitary_products do |t|
      t.string :pest_disease
      t.string :effectiveness
      t.float :dose
      t.float :units_per_hectare
      t.float :price_per_unit
      t.references :provider, index: true
      t.references :registered_supply, index: true
      t.references :phytosanitary_treatment, index: true

      t.timestamps
    end
  end
end
