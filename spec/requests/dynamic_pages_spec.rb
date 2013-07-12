require 'spec_helper'

describe "DynamicPages" do
    it "it should containt Dinefy" do
      visit root_path
      page.should have_content("Dinefy")
    end
end
