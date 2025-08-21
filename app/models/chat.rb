class Chat < ApplicationRecord
  acts_as_chat
  belongs_to :user
  belongs_to :quiz

  has_many :messages
end
