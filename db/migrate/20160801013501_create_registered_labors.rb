class CreateRegisteredLabors < ActiveRecord::Migration
  def change
    create_table :registered_labors do |t|
      t.string :name
      t.string :type
      t.text :observations

      t.timestamps
    end
  end
end
