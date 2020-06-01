class Student::RelationshipsController < Student::Base
  def follow
    current_student.follow(params[:id])
    redirect_back(fallback_location: student_root_path)
  end

  def unfollow
    current_student.unfollow(params[:id])
    redirect_back(fallback_location: student_root_path)
  end
end
