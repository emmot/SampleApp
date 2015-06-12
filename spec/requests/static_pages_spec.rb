require 'rails_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
     it "should have the right title" do
       visit '/static_pages/home'
       expect(page).to have_title("Ruby on rails Sample App | Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    it "should have the right title" do
       visit '/static_pages/help'
       expect(page).to have_title("Ruby on rails Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    it "should have the right title" do
       visit '/static_pages/about'
       expect(page).to have_title("Ruby on rails Sample App | About")
    end
  end
end
