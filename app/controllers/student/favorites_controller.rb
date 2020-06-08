class Student::FavoritesController < Student::Base
  def create
    @diary = Diary.find(params[:diary_id])
    @student = Student.find(params[:student_id])
    favorite = current_student.favorites.new(diary_id: @diary.id)
    favorite.save
  end

  def destroy
    @diary = Diary.find(params[:diary_id])
    @student = Student.find(params[:student_id])
    favorite = current_student.favorites.find_by(diary_id: @diary.id)
    favorite.destroy
  end
end
