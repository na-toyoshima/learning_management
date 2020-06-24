require 'rails_helper'
RSpec.describe "student/students/show", type: :feature do
  before do
    visit new_student_registration_path
    fill_in "student_name", with: "山田太郎"
    fill_in "student_email", with: "test@gmail.com"
    fill_in "student_password", with: "password"
    fill_in "student_password_confirmation", with: "password"
    click_on "新規登録"
  end
  context "リンクチェック" do
    it "ログイン後student/show画面にいる" do
      expect(current_path).to eq student_student_path(id: 1)
    end

    it "フォロー数の表示がある" do
      expect(page).to have_content "フォロー数"
    end

    it "フォロワー数の表示がある" do
      expect(page).to have_content "フォロワー数"
    end

    it "勉強内容登録のリンクがある" do
      click_link "勉強内容登録", match: :first
    end

    it "テスト範囲登録のリンクがある" do
      click_link "テスト範囲登録", match: :first
    end

    it "テスト結果・内申点登録のリンクがある" do
      click_link "テスト結果・内申点登録", match: :first
    end

    it "テスト結果一覧へのリンクがある" do
      click_link "テスト結果一覧へ", match: :first
    end

end
end
