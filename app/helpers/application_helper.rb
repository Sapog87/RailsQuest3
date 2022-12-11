module ApplicationHelper
  class RightUnitInTeamValidation < ActiveModel::Validator
    def validate(record)
      if record.team == "1" and !(record.unit == 'mage' or record.unit == 'knight')
        record.errors.add :base, "Invalid unit in team 1"
      end
      if record.team == "2" and !(record.unit == 'medusa' or record.unit == 'jinn')
        record.errors.add :base, "Invalid unit in team 2"
      end
    end
  end
end
