class Parent::CommentsController < Parent::Base
  def create
    comment = Comment.new(comment_params)
    diary = Diary.find(params[:diary_id])
    comment.parent_id = current_parent.id
    comment.diary_id = diary.id
    comment.score = Language.get_data(comment_params[:body])
    comment.save
    redirect_back(fallback_location: parent_root_path)
  end

  def edit
    @student = Student.find(params[:student_id])
    @diary = Diary.find(params[:diary_id])
    @comment = Comment.find(params[:id])
  end
  def update
    student = Student.find(params[:student_id])
    diary = Diary.find(params[:diary_id])
    comment = Comment.find(params[:id])
    comment.score = Language.get_data(comment_params[:body])
    comment.update(comment_params)
    redirect_to parent_student_diary_path(student_id: student.id, id: diary.id)

  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
