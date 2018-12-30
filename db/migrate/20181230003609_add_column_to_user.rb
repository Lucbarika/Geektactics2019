class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :teacher, :boolean
    add_column :users, :student, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :biographie, :text
  end
end
