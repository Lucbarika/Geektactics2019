class ToolFeedback < ApplicationRecord
  belongs_to :student
  belongs_to :tool
end
