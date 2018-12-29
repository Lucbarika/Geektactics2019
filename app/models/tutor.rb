class Tutor < ApplicationRecord
  has_many :courses
  has_many :tools
  has_many :course_feedbacks
end
