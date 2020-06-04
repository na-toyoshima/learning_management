class Parent::DiariesController < Parent::Base
  def show
    @diary = Diary.find(params[:id])
    @student = Student.find(params[:student_id])
  end

  def index
    @student = Student.find(params[:student_id])
    @diaries = @student.diaries.order("created_at DESC")
  end
end
