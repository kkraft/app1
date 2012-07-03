require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    it "should have the content 'App1'" do
      visit '/static_pages/home'
      page.should have_content('App1')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "App1 | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "App1 | Help")
    end
  end


  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "App1 | About")
    end
  end
end



