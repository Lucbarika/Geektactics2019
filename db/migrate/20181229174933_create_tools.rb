class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.string :pdf_url
      t.string :audio_url
      t.integer :price
      t.references :tutor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
