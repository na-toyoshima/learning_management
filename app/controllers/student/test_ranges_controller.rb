class Student::TestRangesController < Student::Base
  def new
    @test_range = TestRange.new
  end

  def create
    @range = Testrange.new(test_range_params)
    @range.student_id = current_student.id
    @range.save
    redirect_to student_student_test_range_path(student_id: current_student.id, id:@range.id)
  end

  def show
    @range = TestRange.find(params[:id])
  end


  def test_range_params
    params.require(:test_range).permit(:grade, :term, :title, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics, :start_date, :end_date)
  end
end
