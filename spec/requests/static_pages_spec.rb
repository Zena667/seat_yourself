require 'spec_helper'

describe "StaticPages" do
  describe "Signup Page" do 
    it "should have content Sign Up" do
      visit new_user_path
      page.should have_content("Sign Up")
    end
    
  end
end
