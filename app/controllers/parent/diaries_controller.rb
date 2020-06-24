class Parent::DiariesController < Parent::Base
  def show
    @diary = Diary.find(params[:id])
    @student = Student.find(params[:student_id])
    @comment = Comment.new
    @comments = @diary.comments.all
  end

  def index
    @student = Student.find(params[:student_id])
    @diaries = @student.diaries.page(params[:page]).reverse_order.per(7)
  end
end
