class Student::ScoreReportsController < Student::Base
  def create
    @report = ScoreReport.new(score_report_params)
    @report.student_id = current_student.id
    @report.save
    redirect_to student_student_score_reports_path(student_id: current_student.id, id:@report.id)
  end

  def edit
    @report = ScoreReport.find(params[:id])
  end

  def update
    @report = ScoreReport.find(params[:id])
    @report.update(score_report_params)
    redirect_to student_student_score_reports_path(student_id: current_student.id, id:@report.id)
  end

  def index
    @student = Student.find(params[:student_id])
    @reports = @student.score_reports
  end

  private
    def score_report_params
      params.require(:score_report).permit(:grade, :term, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics)
    end
end
