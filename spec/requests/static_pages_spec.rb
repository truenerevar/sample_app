require 'rails_helper'

describe "StaticPages" do

  let(:basic_title) {"Ruby on Rails Tutorial Sample App"}

 describe "Home page" do
  it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')
  end
  it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_title("#{basic_title} | Home")
    end
  end

describe "Help page" do
  it "should have the content 'Help'" do
    visit 'static_pages/help'
    expect(page).to have_content('Help')
  end
  it "should have the content 'Help'" do
    visit 'static_pages/help'
    expect(page).to have_title("#{basic_title} | Help")
  end
end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit 'static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the content 'About Us'" do
      visit 'static_pages/about'
      expect(page).to have_title("#{basic_title} | About")
    end
  end

  describe "Contact" do
    it "should have the content 'Contact'" do
      visit 'static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the content 'Content'" do
      visit 'static_pages/contact'
      expect(page).to have_title("#{basic_title} | Contact")
    end
  end
end