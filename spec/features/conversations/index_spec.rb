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
  end 
end 

  