class Message < ApplicationRecord
  validates_presence_of :text
  belongs_to :conversation
  has_many :thoughts
end
