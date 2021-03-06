class Diary < ApplicationRecord
  belongs_to :student
  #星評価
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  validates :study_time, numericality: {greater_than_or_equal_to: 0}
  validates :solve_number, numericality: {greater_than_or_equal_to: 0}
  validates :incorrect_rate, numericality: {greater_than_or_equal_to: 0}
  validates :can_body, presence: true
  validates :cannot_body, presence: true
  validates :next_body, presence: true
  #いいね機能
  has_many :favorites, dependent: :destroy
  	def favorited_by?(student)
		favorites.where(student_id: student.id).exists?
    end

    has_many :comments

end
