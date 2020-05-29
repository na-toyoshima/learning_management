class Student::TestScoresController < Student::Base
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


  def test_score_params
    params.require(:test_score).permit(:grade, :term, :title, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics)
  end
end
