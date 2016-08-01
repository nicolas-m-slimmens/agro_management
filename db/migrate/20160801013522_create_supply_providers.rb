class CreateSupplyProviders < ActiveRecord::Migration
  def change
    create_table :supply_providers do |t|
      t.references :provider, index: true
      t.float :price
      t.references :registered_supply, index: true

      t.timestamps
    end
  end
end
