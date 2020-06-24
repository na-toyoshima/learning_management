require 'rails_helper'

RSpec.describe Parent, type: :model do
  context "Parentモデルのバリデーションチェック" do
    before do
      @parent = Parent.new(
        name: "山田太郎",
        email: "test@gmail.com",
        password: "password"
      )
    end

    it "名前、メール、パスワードがある場合は有効" do
      expect(@parent).to be_valid
    end

    it "名前が空欄なら無効" do
      @parent.name = nil
      @parent.valid?
      expect(@parent.errors[:name]).to include("can't be blank")
    end

    it "メールアドレスがない場合は無効" do
      @parent.email = nil
      @parent.valid?
      expect(@parent.errors[:email]).to include("can't be blank")
    end

    it "メールアドレスがない場合は無効" do
      @parent.password = "pass"
      @parent.valid?
      expect(@parent.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end
end
