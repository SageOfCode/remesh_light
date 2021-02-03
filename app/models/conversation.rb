class Conversation < ApplicationRecord
  validates_presence_of :title
  has_many :messages

  def start_date
    self.created_at.to_date
  end
end
