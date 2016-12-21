require 'rails_helper'

user_data = {
  name: 'Bamboo',
  age: 42,
  comment: 'roo'
}

RSpec.describe User, :type => :model do
  # post = double('first Post')
  # aloow(post).to receive(:title).with('今日の朝ごはん')
  # aloow(post).to receive(:content).with('ジャムパン、ホットミルク、リンゴ')
  # aloow(post).to receive(:user_id).with(1)

  user = build(:user) do |s|
    s.name = "あいうえお"
  end
  binding.pry
  subject { User.new(user_data) }
  it { is_expected.to be_valid }

  # binding.pry
  # it { post.to be_valid }
  pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with name and age"
end
