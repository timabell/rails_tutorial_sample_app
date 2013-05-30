require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit root_path }
    subject { page }

    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_title("#{base_title}") }
    it { should_not have_title('|') }
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
     it 'should have the right title' do
      visit help_path
      expect(page).to have_title "#{base_title} | Help"
    end
  end

  describe "About Us page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
      it 'should have the right title' do
      visit about_path
      expect(page).to have_title "#{base_title} | About"
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
