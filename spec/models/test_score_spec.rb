require 'rails_helper'
RSpec.describe TestScore, type: :model do
  context "登録時のバリデーションエラー" do
    before do
      @score = TestScore.new
      @score.grade = "1"
      @score.term = "1"
      @score.title = "中間"
      @score.japanese = "3"
      @score.math = "3"
      @score.science= "3"
      @score.social = "4"
      @score.english = "5"
      @score.p_e = "3"
      @score.art = "あああ"
      @score.music = "7"
      @score.technical_course = "4"
      @score.home_economics = "5"
      @score.student_id = "1"
      @score.save
    end

    it "入力された内容が保存されない" do
      @score.valid?
      expect(@score.errors[:art]).to include("is not a number")
    end
  end

  context "データが正しく保存される" do
    before do
      @score = TestScore.new
      @score.grade = "1"
      @score.term = "1"
      @score.title = "中間"
      @score.japanese = "3"
      @score.math = "3"
      @score.science= "3"
      @score.social = "4"
      @score.english = "5"
      @score.p_e = "3"
      @score.art = "5"
      @score.music = "7"
      @score.technical_course = "1"
      @score.home_economics = "5"
      @score.student_id = "1"
      @score.save
    end

    it "入力された内容が保存される" do
      expect(@score).to be_valid
    end
  end
end
