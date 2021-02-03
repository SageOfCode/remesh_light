require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit a conversation show page" do
    it "I see messages and thoughts for that conversation" do
      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )
      message1 = convo1.messages.create!(
        text: "I love it, it makes smoothies very quickly"
      )
      thought1 = message1.thoughts.create!(
        text: "I feel like it only makes smoothies quickly if nothing is too frozen"
      )

      visit "/conversations/#{convo1.id}"

      expect(page).to have_content("I love it, it makes smoothies very quickly")
      expect(page).to have_content("I feel like it only makes smoothies quickly if nothing is too frozen")
    end
    it 'I can add a message to that conversation' do
      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )

      visit "/conversations/#{convo1.id}"
      click_link("Add a Message")
      expect(current_path).to eq(new_conversation_message_path(convo1.id))
    end
    it 'I can add a thought to that message' do
      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )
      message1 = convo1.messages.create!(
        text: "I love it, it makes smoothies very quickly"
      )

      visit "/conversations/#{convo1.id}"
      click_link("Add a Thought")
      expect(current_path).to eq(new_conversation_message_thought_path(convo1.id, message1.id))
    end
  end 
end 

  