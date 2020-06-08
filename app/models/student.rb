class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :test_scores, dependent: :destroy
        has_many :score_reports, dependent: :destroy
        has_many :test_ranges, dependent: :destroy
        has_many :diaries, dependent: :destroy
        has_many :favorites, dependent: :destroy
        attachment :image
        #以下フォロー関係の記述
        has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
          # student1:relationship多になるためclass_nameでクラスを指定、フォロー取得
        has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
          # フォロワー取得
        has_many :following_student, through: :follower, source: :followed
          # ゴールはfollowing_student、throughは経路、sourceはスタート地点。自分がフォローしている人
        has_many :follower_student, through: :followed, source: :follower
          # 自分をフォローしている人
        # ユーザーをフォローする
          def follow(student_id)
            follower.create(followed_id: student_id)
          end

        # ユーザーのフォローを外す
          def unfollow(student_id)
            follower.find_by(followed_id: student_id).destroy
          end

        # フォローしていればtrueを返す
          def following?(student)
            following_student.include?(student)
          end
        # フォローリクエスト機能
          has_many :follow_requests, dependent: :destroy
          has_many :parent_follows, dependent: :destroy

end
