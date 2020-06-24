require 'rails_helper'
RSpec.describe "student/test_scores/new", type: :view do
  context "テスト結果登録画面に登録ボタンがある" do
    it "登録ボタンがあることを確認" do
      expect(page).to have_button "登録"
    end
  end
end
