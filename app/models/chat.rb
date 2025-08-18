class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  has_many :answers
  has_many :questions
end
