class Job < ApplicationRecord
    belongs_to :category, optional: true
    belongs_to :employer, optional: true

    validates :title, presence: true
end
