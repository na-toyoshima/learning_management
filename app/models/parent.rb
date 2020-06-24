class Parent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name,  presence: true
  validates :email,  presence: true
  has_many :follow_requests
  def already_requested?(student)
    self.follow_requests.exists?(student_id: student.id)
  end

  has_many :parent_follows
    def already_followed?(student)
      self.parent_follows.exists?(student_id: student.id)
    end

    has_many :comments

end
