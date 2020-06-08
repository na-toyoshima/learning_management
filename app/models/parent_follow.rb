class ParentFollow < ApplicationRecord
  belongs_to :parent
  belongs_to :student
end
