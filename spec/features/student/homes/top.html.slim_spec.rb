require 'rails_helper'
RSpec.describe "student/homes/top", type: :feature do

  context "topとaboutの表示確認" do
    it "aboutページへのリンク確認" do
      visit root_path
      expect(page).to have_link nil, href: about_path
    end

    it "生徒ログインページへのリンク確認" do
      visit root_path
      expect(page).to have_link nil, href: new_student_session_path
    end

    it "生徒新規登録ページへのリンク確認" do
      visit root_path
      expect(page).to have_link nil, href: new_student_registration_path
    end

    it "保護者ログインページへのリンク確認" do
      visit root_path
      expect(page).to have_link nil, href: new_parent_session_path
    end

    it "保護者新規登録ページへのリンク確認" do
      visit root_path
      expect(page).to have_link nil, href: new_parent_registration_path
    end

    it "aboutページの表示確認" do
      visit about_path
      expect(page).to have_content 'テスト結果や日頃の勉強内容の情報を登録すると、自分だけの勉強管理ページが作成できるようになっています。'
    end
  end
end
