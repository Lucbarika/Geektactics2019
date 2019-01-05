class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :purchases
  has_many :tools
  # has_many :courses, through: :tools
  # has_many :courses, through: :purchases
  has_many :course_feedbacks
  has_many :tool_feedbacks
end
