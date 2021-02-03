require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit new_conversation_message_thought" do
    it "I see a form to add a thought" do
      convo1 = Conversation.create!(
        title: "Candy Crush Ad Feedback"
      )
      message1 = convo1.messages.create!(
        text: "I love it, it is such a fun game!"
      )
      visit new_conversation_message_thought_path(convo1.id, message1.id)

      fill_in "Text", with: "Agreed, so fun!"
      click_button "Save Thought" 

      expect(current_path).to eq(conversation_path(convo1.id))
    end
  end 
end 