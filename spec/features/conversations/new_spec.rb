require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/conversations/new'" do
    it "I see a form to create a conversation" do
      visit "/conversations/new"

      fill_in "Title", with: "Candy Crush Ad Feedback"
      click_button "Create Conversation" 

      expect(current_path).to eq(conversations_path)
    end
  end 
end 