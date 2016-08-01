class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :variety
      t.string :quality
      t.float :quantity
      t.float :area
      t.boolean :own_storage
      t.references :parcel, index: true
      t.date :campaign
      t.references :crop, index: true

      t.timestamps
    end
  end
end
