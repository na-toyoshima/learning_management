class Parent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        has_many :follow_requests
        def already_requested?(student)
          self.follow_requests.exists?(student_id: student.id)
	          end
end
