class Course < ApplicationRecord
  belongs_to :student
  belongs_to :tutor
  has_many :course_feedbacks
end
