class CreateCourseFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :course_feedbacks do |t|

      t.timestamps
    end
  end
end
