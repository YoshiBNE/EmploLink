class Employer < ApplicationRecord
    has_many :jobs
    has_many :links
    has_many :seekers, through: :links
    has_many :categories, through: :jobs

    validates :company_name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :state, presence: true
     
end
