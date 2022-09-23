require 'rails_helper'

RSpec.describe User, type: :model do
  # 名前がなければ無効であること
  it "is invalid without a name" do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("を入力してください")
  end
  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address" do
    User.create(
      name: "john",
      email: "tester@example.com",
      password: "xxxxxx",
      password_confirmation: "xxxxxx",
    )
    user = User.new(
      name: "johonson",
      email: "tester@example.com",
      password: "xxxxxx",
      password_confirmation: "xxxxxx",
    )
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
  
end
