class CreateCourseFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :course_feedbacks do |t|
      t.text :content
      t.references :tutor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
