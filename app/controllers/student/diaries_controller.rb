class Student::DiariesController < Student::Base
  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.student_id = current_student.id
    @diary.save
    redirect_to student_student_diary_path(student_id: current_student.id, id:@diary.id)
  end

  def show
    @diary = Diary.find(params[:id])

  end


  private
  def diary_params
    params.require(:diary).permit(:study_time, :solve_number, :incorrect_rate, :can_body, :cannot_body, :next_body, :rate)
  end
end
