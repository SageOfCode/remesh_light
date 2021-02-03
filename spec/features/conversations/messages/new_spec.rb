require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit new_conversation_message_path" do
    it "I see a form to add a message" do
      convo1 = Conversation.create!(
        title: "Candy Crush Ad Feedback"
      )
      visit new_conversation_message_path(convo1.id)

      fill_in "Text", with: "Candy Crush is so addicting!"
      click_button "Save Message" 

      expect(current_path).to eq(conversation_path(convo1.id))
    end
  end 
end 