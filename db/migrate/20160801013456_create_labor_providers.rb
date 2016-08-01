class CreateLaborProviders < ActiveRecord::Migration
  def change
    create_table :labor_providers do |t|
      t.references :registered_labor, index: true
      t.references :provider, index: true
      t.float :price

      t.timestamps
    end
  end
end
