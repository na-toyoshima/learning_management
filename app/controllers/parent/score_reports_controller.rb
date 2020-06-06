class Parent::ScoreReportsController < Parent::Base
  def index
    @student = Student.find(params[:student_id])
    @reports = @student.score_reports
  end
end
