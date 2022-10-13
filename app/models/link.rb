class Link < ApplicationRecord
  belongs_to :seeker
  belongs_to :employer
end
