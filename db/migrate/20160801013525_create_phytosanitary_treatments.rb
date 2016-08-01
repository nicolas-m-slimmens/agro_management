class CreatePhytosanitaryTreatments < ActiveRecord::Migration
  def change
    create_table :phytosanitary_treatments do |t|
      t.date :applied_at
      t.float :affected_area
      t.text :observations
      t.references :parcel, index: true
      t.date :campaign

      t.timestamps
    end
  end
end
