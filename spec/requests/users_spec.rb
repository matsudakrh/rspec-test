require 'rails_helper'

RSpec.describe "Users", :type => :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      expect(response.status).to be(200)
    end
  end
  # describe "GET /users/show" do
  #   @user = assign(:user, User.create!(
  #     :name => "MyString",
  #     :age => 1,
  #   ))
  #   it "is show action" do
  #     get users_show_path
  #     expect(response.status).to be(200)
  #   end
  # end
end
