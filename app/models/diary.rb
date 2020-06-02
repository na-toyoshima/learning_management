class Diary < ApplicationRecord
  belongs_to :student
  #星評価
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  #いいね機能
  has_many :favorites, dependent: :destroy
  	def favorited_by?(student)
		favorites.where(student_id: student.id).exists?
	end
end
