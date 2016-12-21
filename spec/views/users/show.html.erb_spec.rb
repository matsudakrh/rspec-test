require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :age => 1,
      :comment => "Comment"
    ))
    @posts = assign(:posts, [
      Post.create!(
        :title => "Title1",
        :content => "Content1",
        :user_id => 1,
      ),
      Post.create!(
        :title => "Title2",
        :content => "Content2",
        :user_id => 1,
      )
    ])
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Comment/)
  end
end
