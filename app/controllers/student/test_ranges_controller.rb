class Student::TestRangesController < Student::Base
  before_action :correct_student, only: [:edit, :update]
  def new
    @test_range = TestRange.new
  end

  def create
    @range = TestRange.new(test_range_params)
    @range.student_id = current_student.id
    @range.save
    redirect_to student_student_test_range_path(student_id: current_student.id, id:@range.id)
  end

  def show
    @range = TestRange.find(params[:id])
  end

  def edit
    @range = TestRange.find(params[:id])
  end

  def update
    @range = TestRange.find(params[:id])
    @range.update(test_range_params)
    redirect_to student_student_test_range_path(student_id: current_student.id, id:@range.id)
  end

  def test_range_params
    params.require(:test_range).permit(:grade, :term, :title, :japanese, :math, :science, :social, :english, :p_e, :art, :music, :technical_course, :home_economics, :start_date, :end_date)
  end

  private
  def correct_student
    range = TestRange.find(params[:id])
    unless range.student_id == current_student.id
      redirect_to student_root_path(current_student)
    end
  end
end
