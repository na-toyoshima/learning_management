class Student::TestScoresController < Student::Base
  before_action :correct_student, only: [:edit, :update,:show]
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
    redirect_to student_student_test_scores_path(student_id: current_student.id)
  end

  def index
    @student = Student.find(params[:student_id])
    @test_scores = @student.test_scores
  end

private
  def test_score_params
    params.require(:test_score).permit(:grade, :term, :title, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics)
  end

  def correct_student
    score = TestScore.find(params[:id])
    unless score.student_id == current_student.id
      redirect_to student_root_path(current_student)
    end
  end
end
