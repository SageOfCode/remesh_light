require 'rails_helper'

RSpec.describe Conversation, type: :model do
  
  describe 'validations' do
    it {should validate_presence_of :title}
  end 

  describe 'relationships' do
    it {should have_many :messages}
  end
end 