class Student::StudentsController < Student::Base
  def show
    @student = Student.find(params[:id])
    @test_scores = @student.test_scores
    @diaries = @student.diaries
  end


end
