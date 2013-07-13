require 'spec_helper'

describe "DynamicPages" do
  describe "Index Page" do
    it "it should containt Dinefy" do
      visit root_path
      page.should have_content("Dinefy")
    end

    # it "should have link to Sign Up" do
    #   before do 
    #       visit root
    #       click_on("Sign Up")

    #   end
    # end
  end  
end
