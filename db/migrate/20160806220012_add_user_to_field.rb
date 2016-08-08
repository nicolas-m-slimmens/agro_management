class AddUserToField < ActiveRecord::Migration
  def change
    add_reference :fields, :user, index: true
  end
end
