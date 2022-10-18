class Link < ApplicationRecord
    belongs_to :seeker, optional: true
    belongs_to :employer, optional: true
end
