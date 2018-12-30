class CreateToolFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :tool_feedbacks do |t|
      t.references :tool, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
