require 'rails_helper'

RSpec.describe Conversation, type: :model do
  
  describe 'validations' do
    it {should validate_presence_of :title}
  end 

  describe 'relationships' do
    it {should have_many :messages}
  end

  describe 'instance methods' do 
    it 'start_date' do
      convo1 = Conversation.create!(
        title: "Magic Bullet Feedback"
      )
      expect("#{convo1.start_date}").to be_a(String)
    end
  end
end 