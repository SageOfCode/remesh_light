require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit '/conversations'" do
    it "I see a list of conversations" do

      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )

      convo2 = Conversation.create!(
        title: "Cheese Board Video"
      )

      convo3 = Conversation.create!(
        title: "Nascar Feeback"
      )

      convo4 = Conversation.create!(
        title: "New Banking Account Feedback"
      )

      visit '/conversations'

      within ".convo-#{convo1.id}" do
        expect(page).to have_link("Magic Bullet Feedback")  
        expect(page).to have_content("Start Date:")  
      end 

      within ".convo-#{convo2.id}" do
        expect(page).to have_link("Cheese Board Video")  
        expect(page).to have_content("Start Date:")  
      end 

      within ".convo-#{convo3.id}" do 
        expect(page).to have_link("Nascar Feeback")  
        expect(page).to have_content("Start Date:")  
      end 

      within ".convo-#{convo4.id}" do 
        expect(page).to have_link("New Banking Account Feedback")  
        expect(page).to have_content("Start Date:")
      end 
    end 
    it 'I see a button to create a conversation' do
      visit '/conversations'

      click_link "Create a Conversation"
      expect(current_path).to eq(new_conversation_path)
    end
    it 'I can search for a conversation by title' do
      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )
      visit conversations_path

      fill_in :conversation, with: "Magic Bullet Feedback"
      click_button "Search"
      expect(current_path).to eq(conversations_path)
    end
    it 'I can search for a conversation by title and return results' do
      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )
      convo2 = Conversation.create!(
        title: "Generic Blender Feedback"
      )
      visit conversations_path

      fill_in :conversation, with: "magic"
      click_button "Search"

      within '.search-results' do
        expect(page).to have_content("Magic Bullet Feedback")
      end
    end
  end 
end 

  