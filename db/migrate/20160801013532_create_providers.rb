class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :tax_identifier
      t.text :observations
      t.references :contact, index: true

      t.timestamps
    end
  end
end
