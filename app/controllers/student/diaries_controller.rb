class Student::DiariesController < Student::Base
  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.student_id = current_student.id
    if @diary.save
      redirect_to student_student_diary_path(student_id: current_student.id, id:@diary.id)
    else
      @diary = Diary.new
      render :new
    end

  end

  def show
    @diary = Diary.find(params[:id])
  end

  def index
    @student = Student.find(params[:student_id])
    @diaries = @student.diaries.order("created_at DESC")
  end

  private
  def diary_params
    params.require(:diary).permit(:study_time, :solve_number, :incorrect_rate, :can_body, :cannot_body, :next_body, :rate)
  end
end
