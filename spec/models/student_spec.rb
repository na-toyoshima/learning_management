require 'rails_helper'

RSpec.describe Student, type: :model do
  context "studentモデルのバリデーション等check" do

    it "名前、メール、パスワードがある場合は有効" do
      student = Student.new(
        name: "山田太郎",
        email: "test@gmail.com",
        password: "password"
      )
      expect(student).to be_valid
    end

    it "名前がない場合は無効" do
    student = Student.new(
        name: nil,
        email: "test@gmail.com",
        password: "password"
      )
      student.valid?
      expect(student.errors[:name]).to include("can't be blank")
    end

    it "メールアドレスがない場合は無効" do
    student = Student.new(
        name: "山田太郎",
        email: nil,
        password: "password"
      )
      student.valid?
      expect(student.errors[:email]).to include("can't be blank")
    end

    it "パスワードが6文字未満の場合は無効" do
    student = Student.new(
        name: "山田太郎",
        email: "test@gmail.com",
        password: "pass"
      )
      student.valid?
      expect(student.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end
end
