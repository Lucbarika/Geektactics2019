class Purchase < ApplicationRecord
  belongs_to :student
  belongs_to :tool
end
