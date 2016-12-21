require 'rails_helper'

post_data = {
  title: 'M25 rkrl shw',
  content: 'rk str st hrm',
  user_id: 1,
}

RSpec.describe Post, :type => :model do
  subject { Post.new(post_data) }
  it { is_expected.to be_valid }
  pending "add some examples to (or delete) #{__FILE__}"
end
