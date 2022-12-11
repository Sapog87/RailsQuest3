include ApplicationHelper

class Character < ApplicationRecord
  validates :team, :unit, presence: true
  validates :unit, inclusion: { in: %w(mage medusa jinn knight) }
  validates :team, comparison: { less_than_or_equal_to: 2, greater_than_or_equal_to: 1 }
  validates_with RightUnitInTeamValidation
end  