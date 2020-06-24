class Parent::ParentsController < Parent::Base
  def show
    @followings = current_parent.parent_follows.all
    #フォローしている生徒を全て取得し、@studentsに配列として追加
    @students = []
    @followings.each do |follow|
      @students << Student.find_by(id:follow.student_id)
    end
    #student_idsに@studentsに入っているidのみmapで抽出
    student_ids = @students.map{|student| student.id}
    #whereは複数を指定することが可能なので、student_idsの値でDiaryを検索し、7件降順で配置
    @diaries = Diary.where(student_id:student_ids)
    @diaries = @diaries.page(params[:page]).reverse_order.per(7)
  end
end
