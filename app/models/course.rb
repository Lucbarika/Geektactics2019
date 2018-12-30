class Course < ApplicationRecord
  belongs_to :user
  has_many :course_feedbacks
  has_many :tools
end
