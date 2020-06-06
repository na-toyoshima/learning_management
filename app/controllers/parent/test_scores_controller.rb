class Parent::TestScoresController < Parent::Base
  def show
    @score = TestScore.find(params[:id])
    @student = Student.find(params[:student_id])
  end

  def index
    @student = Student.find(params[:student_id])
    @test_scores = @student.test_scores
  end
end
