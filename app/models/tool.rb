class Tool < ApplicationRecord
  belongs_to :tutor
  belongs_to :course
  has_many :purchases
  has_many :tool_feedbacks
end
