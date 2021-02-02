class Thought < ApplicationRecord
  validates_presence_of :text
  belongs_to :message
end
