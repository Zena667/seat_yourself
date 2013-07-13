require 'spec_helper'

describe "StaticPages" do
  describe "Signup Page" do 
    it "should have content Sign Up" do
      visit new_user_path
      page.should have_content("Sign Up")
    end

    before do
        visit new_user_path
      
        fill_in 'Name', with: "Eric"
        fill_in 'Email', with: "eric@gmail.com"
        fill_in 'Password', with: "password"
        fill_in 'Password confirmation', with: "password"
    end
    it "should create user and redirect to root_path" do

      click_on 'Create User'

      current_path.should == root_path
      User.all.count.should == 1
    end

    
  end
end
