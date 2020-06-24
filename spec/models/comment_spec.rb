require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "コメントモデルのバリデーション" do
    it "コメントが空欄であれば無効" do
      comment = Comment.new(
        body: nil
      )
      expect(comment).to be_invalid
    end

    it "コメントに記載があれば有効" do
      comment = Comment.new(
        body: "よくがんばりました"
      )
      expect(comment).to be_valid
    end
  end
end
