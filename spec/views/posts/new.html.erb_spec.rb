require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyString",
      :content => "MyString",
      :user_id => 1,
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "input#post_content[name=?]", "post[content]"
    end
  end
end
