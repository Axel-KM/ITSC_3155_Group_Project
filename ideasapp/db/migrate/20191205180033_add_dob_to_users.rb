class AddDobToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dob, :date_field_tag
  end
end
