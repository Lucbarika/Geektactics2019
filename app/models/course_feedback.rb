class CourseFeedback < ApplicationRecord
  belongs_to :tutor
  belongs_to :course
end
