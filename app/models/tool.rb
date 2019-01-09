class Tool < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :purchases
  has_many :tool_feedbacks, dependent: :destroy
end
