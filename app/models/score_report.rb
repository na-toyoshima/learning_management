class ScoreReport < ApplicationRecord
  belongs_to :student
  validates :japanese, numericality: {greater_than_or_equal_to: 0}
  validates :math, numericality: {greater_than_or_equal_to: 0}
  validates :science, numericality: {greater_than_or_equal_to: 0}
  validates :social, numericality: {greater_than_or_equal_to: 0}
  validates :english, numericality: {greater_than_or_equal_to: 0}
  validates :p_e, numericality: {greater_than_or_equal_to: 0}
  validates :art, numericality: {greater_than_or_equal_to: 0}
  validates :music, numericality: {greater_than_or_equal_to: 0}
  validates :technical_course, numericality: {greater_than_or_equal_to: 0}
  validates :home_economics, numericality: {greater_than_or_equal_to: 0}
end
