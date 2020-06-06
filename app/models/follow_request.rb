class FollowRequest < ApplicationRecord
  belongs_to :student
  belongs_to :parent
end
