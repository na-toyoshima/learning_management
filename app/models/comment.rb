class Comment < ApplicationRecord
  belongs_to :student
  belongs_to :parent
  belongs_to :diary
  validates :body,  presence: true
end
