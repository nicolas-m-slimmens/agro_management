class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :message
      t.string :type

      t.timestamps
    end
  end
end
