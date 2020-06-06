class Student::ParentFollowsController < Student::Base
  before_action :correct_student, only: [:destroy]

  def index
    @followers = current_student.parent_follows.all
  end

  def destroy
    follow = ParentFollow.find(params[:id])
    follow.destroy
    redirect_back(fallback_location: student_root_path)
  end

  private
  def correct_student
    follow = ParentFollow.find(params[:id])
    unless follow.student_id == current_student.id
      redirect_to student_root_path(current_student)
    end
  end
end
