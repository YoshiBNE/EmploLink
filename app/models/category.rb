class Category < ApplicationRecord
    has_many :jobs
    has_many :employers, through: :jobs

    validates :name, presence: true, uniqueness: true, length: { maximum:50 }
end
