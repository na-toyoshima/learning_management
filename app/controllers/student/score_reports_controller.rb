class Student::ScoreReportsController < Student::Base
  def create
    @report = ScoreReport.new(test_score_params)
    @report.student_id = current_student.id
    @report.save
    redirect_to student_student_score_reports_path(student_id: current_student.id, id:@report.id)
  end


  def test_score_params
    params.require(:score_report).permit(:grade, :term, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics)
  end
end
