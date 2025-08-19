class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  has_many :messages
end
