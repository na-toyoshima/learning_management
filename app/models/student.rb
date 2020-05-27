class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :test_scores, dependent: :destroy
        has_many :score_reports, dependent: :destroy
        has_many :test_ranges, dependent: :destroy
        has_many :diaries, dependent: :destroy
        has_many :comments, dependent: :destroy

end
