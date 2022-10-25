class SeekerSkill < ApplicationRecord
  belongs_to :seeker, optional: true
    belongs_to :skill, optional: true
end
