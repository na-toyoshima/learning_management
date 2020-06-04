class Student::FollowRequestsController < Student::Base
  def allow
    request = FollowRequest.find(params[:id])
    parent = Parent.find_by(id:request.parent_id)
    follow = current_student.parent_follows.new(student_id:current_student.id, parent_id: parent.id)
    follow.save
    request.destroy
    redirect_back(fallback_location: student_root_path)
  end

  def destroy
    request = FollowRequest.find(params[:id])
    request.destroy
    redirect_back(fallback_location: student_root_path)
  end

  def index
    @requests = current_student.follow_requests.all
  end

  def show

  end
end
