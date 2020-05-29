class Student::TestScoresController < Student::Base
  def show
    @score = TestScore.find(params[:id])
  end
  def new
    @test_score = TestScore.new
    @score_report = ScoreReport.new
  end

  def create
    @score = TestScore.new(test_score_params)
    @score.student_id = current_student.id
    @score.save
    redirect_to student_student_test_scores_path(student_id: current_student.id, id:@score.id)
  end

  def edit
    @score = TestScore.find(params[:id])
  end

  def update
    @score = TestScore.find(params[:id])
    @score.update(test_score_params)
    redirect_to student_student_test_scores_path(student_id: current_student.id, id:@score.id)
  end

  def index
    @student = Student.find(params[:student_id])
    @test_scores = @student.test_scores
  end

private
  def test_score_params
    params.require(:test_score).permit(:grade, :term, :title, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics)
  end
end
