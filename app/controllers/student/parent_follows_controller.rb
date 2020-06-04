class Student::ParentFollowsController < Student::Base
  def index
    @followers = current_student.parent_follows.all
  end

  def destroy
    follow = ParentFollow.find(params[:id])
    follow.destroy
    redirect_back(fallback_location: student_root_path)
  end
end
