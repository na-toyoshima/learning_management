require 'rails_helper'
RSpec.describe Diary, type: :model do
  context "Diaryモデルのバリデーションチェック" do
      before do
        @diary = Diary.new(
          study_time: 5,
          solve_number: 20,
          incorrect_rate: 2,
          can_body: "できた",
          cannot_body: "できなかった",
          next_body: "明日やる",
          rate: 3
        )
      end
      it "study_timeが空欄ならエラー" do
        @diary.study_time = nil
        @diary.valid?
        expect(@diary).to be_invalid
      end

      it "study_timeが数字以外ならエラー" do
        @diary.study_time = "ああああ"
        @diary.valid?
        expect(@diary.errors[:study_time]).to include("is not a number")
      end

      it "study_timeが0未満ならエラー" do
        @diary.study_time = "-5"
        @diary.valid?
        expect(@diary.errors[:study_time]).to include("must be greater than or equal to 0")
      end

      it "can_bodyが空欄ならエラー" do
        @diary.can_body = nil
        @diary.valid?
        expect(@diary.errors[:can_body]).to include("can't be blank")
      end

      it "rateが1未満ならエラー" do
        @diary.rate = 0
        @diary.valid?
        expect(@diary.errors[:rate]).to include("must be greater than or equal to 1")
      end
      
      it "rateが5より大きいならエラー" do
        @diary.rate = 6
        @diary.valid?
        expect(@diary.errors[:rate]).to include("must be less than or equal to 5")
    end
  end
end
