class Student::StudentsController < Student::Base
  def show
    @student = Student.find(params[:id])
    @test_scores = @student.test_scores
    @diaries = @student.diaries
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

end
