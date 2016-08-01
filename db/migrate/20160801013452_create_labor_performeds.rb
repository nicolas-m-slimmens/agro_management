class CreateLaborPerformeds < ActiveRecord::Migration
  def change
    create_table :labor_performeds do |t|
      t.references :parcel, index: true
      t.date :campaign
      t.references :registered_labor, index: true
      t.references :provider, index: true
      t.float :price
      t.date :done_at
      t.text :observations

      t.timestamps
    end
  end
end
