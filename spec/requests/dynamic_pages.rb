require 'spec_helper'

describe "DynamicPages" do
  describe "GET /dynamic_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      response.status.should be(200)
    end
  end
end
