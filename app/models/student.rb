class Student < ApplicationRecord
  has_many :courses
  has_many :course_feedbacks
  has_many :purchases
end
