require 'spec_helper'

describe "DynamicPages" do
  describe "GET /dynamic_pages" do
    it "it should containt Dinefy" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content("Dinefy")
    end
  end
end
