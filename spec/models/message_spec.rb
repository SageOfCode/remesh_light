require 'rails_helper'

RSpec.describe Message, type: :model do
  
  describe 'validations' do
    it {should validate_presence_of :text}
  end 

  describe 'relationships' do
    it {should belong_to :conversation}
    it {should have_many :thoughts}
  end
end 