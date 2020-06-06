class Student::StudentsController < Student::Base
  before_action :correct_student, only: [:edit, :update]

  def show
    @student = Student.find(params[:id])
    @test_scores = @student.test_scores.order("created_at DESC").limit(3)
    @diaries = @student.diaries.order("created_at DESC").limit(7)
    @diary_next = @diaries.order("created_at DESC").limit(1)
    @ranges = @student.test_ranges.order("created_at DESC").limit(1)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_student_path(id: current_student.id)
  end

  private
  def student_params
    params.require(:student).permit(:name,:image)
  end
  def correct_student
    student = Student.find(params[:id])
    unless student.student_id == current_student.id
      redirect_to student_root_path(current_student)
    end
  end
end
