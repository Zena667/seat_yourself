require 'spec_helper'

describe "DynamicPages" do
  describe "Index Page" do
    before {visit root_path}

    it "it should containt Dinefy" do
      page.should have_content("Dinefy")
    end

    it "should have link to Sign Up" do
      page.has_link? ('Sign Up')
    end


    describe "root should show a list of restaurants" do
      it "should not have a record class yet" do
        page.should_not have_css('div.record')
      end
      let(:restaurant) {FactoryGirl.create(:restaurant)}

      it "should have a record class now" do
        page.has_css? ('div.record')
      end
    end
  end 

  describe "Show Restaurant Page" do
    let(:restaurant) {FactoryGirl.create(:restaurant)}
    before do
      visit restaurant_path(restaurant)
    end

    it "should have content Food" do
      page.should have_content('Food')
    end
  end


end
