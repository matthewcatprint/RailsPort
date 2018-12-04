require 'spec_helper.rb'
require 'capybara/rspec'

RSpec.describe "Welcome Page" do
    describe "Welcome page" do
      it "should have the content 'VIEW MY WORK' " do
        visit '/welcome'
        page.should have_content('VIEW MY WORK')
        click_link("View my Work") 
        expect(page).to have_content 'sheep'       
      end
    end

    describe "Portfolio Page" do
        it "should have the content 'Sheep' " do
          visit '/portfolio'
          page.should have_content('sheep')
        end
      end

      describe "Click contact link" do
        it "should have the content 'me' " do
        visit '/welcome'        
        click_link('Contact') 
        expect(page).to have_content 'me'
        end
      end



      

end

