class Course < ApplicationRecord
  has_many :course_feedbacks
  has_many :tools
end
