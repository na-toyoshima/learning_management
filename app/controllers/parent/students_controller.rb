class Parent::StudentsController < Parent::Base
  def show
    @student = Student.find(params[:id])
    @test_scores = @student.test_scores.order("created_at DESC").limit(3)
    @diaries = @student.diaries.order("created_at DESC").limit(7)
    @diary_next = @diaries.order("created_at DESC").limit(1)
    @ranges = @student.test_ranges.order("created_at DESC").limit(1)
    @score_reports = @student.score_reports.order("created_at DESC").limit(3)
  end
end
