class Parent::FollowRequestsController < Parent::Base
  def create
    student = Student.find(params[:student_id])
    request = current_parent.follow_requests.new(student_id: student.id, parent_id: current_parent.id)
    request.save
    redirect_back(fallback_location: parent_root_path)
  end

  def destroy
    student = Student.find(params[:student_id])
    request = current_parent.follow_requests.find_by(student_id: student.id, parent_id: current_parent.id)
    request.destroy
    redirect_back(fallback_location: parent_root_path)
  end
end
