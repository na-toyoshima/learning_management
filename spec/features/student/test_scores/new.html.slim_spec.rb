require 'rails_helper'
RSpec.describe "student/test_scores/new", type: :feature do
  before do
    visit new_student_registration_path
    fill_in "student_name", with: "山田太郎"
    fill_in "student_email", with: "test@gmail.com"
    fill_in "student_password", with: "password"
    fill_in "student_password_confirmation", with: "password"
    click_on "新規登録"
  end
  context "テスト結果登録画面に登録ボタンがある" do
    it "登録ボタンがあることを確認" do
      visit new_student_student_test_score_path(student_id: 1)
      click_on "内申点結果登録", match: :first
    end
  end
end
