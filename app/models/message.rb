class Message < ApplicationRecord
  acts_as_message

  belongs_to :chat

  validates :content, presence: true, length: { maximum: 1000 }, if: -> { role == "user" }
end
