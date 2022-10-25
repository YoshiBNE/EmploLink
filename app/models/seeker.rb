class Seeker < ApplicationRecord
    has_many :seeker_skills
    has_many :skills, through: :seeker_skills
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, numericality: { only_integer: true }, numericality: { in: 18..80 }
    validates :email, presence: true, uniqueness: true
    validates :phone, uniqueness: true, length: { is:10 }
end
