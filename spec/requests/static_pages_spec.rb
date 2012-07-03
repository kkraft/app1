require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    before {visit root_path}

    it "should have the content 'App1'" do
      page.should have_content('App1')
    end

    it "should have the right title" do
      page.should have_selector('title', :text => "App1 | Home")
    end
  end

  describe "Help page" do
    before { visit help_path}

    it "should have the content 'Help'" do
      page.should have_content('Help')
    end

    it "should have the right title" do
      page.should have_selector('title', :text => "App1 | Help")
    end
  end


  describe "About page" do
    before { visit about_path }

    it "should have the content 'About'" do
      page.should have_content('About')
    end

    it "should have the right title" do
      page.should have_selector('title', :text => "App1 | About")
    end
  end

  describe "Contact Page" do
    before { visit contact_path }

    it "should have the h1 'Contact'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title Contact" do
      page.should have_selector('title', text: "App1 | Contact")
    end
  end
end



