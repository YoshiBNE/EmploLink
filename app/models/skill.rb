class Skill < ApplicationRecord
    belongs_to :seeker_skill, optional: true
    has_many :seekers, through: :seeker_skills

    validates :name, presence: true, uniqueness: true
    validates :description, length: { maximum: 100 }
end
