class CreateToolFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :tool_feedbacks do |t|
      t.text :content
      t.references :student, foreign_key: true
      t.references :tool, foreign_key: true

      t.timestamps
    end
  end
end
