class TestRange < ApplicationRecord
  belongs_to :student
  validates :grade, presence: true
  validates :term, presence: true
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
