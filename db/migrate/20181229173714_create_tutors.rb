class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.string :first_name
      t.string :last_name
      t.text :biographie
      t.string :email

      t.timestamps
    end
  end
end
