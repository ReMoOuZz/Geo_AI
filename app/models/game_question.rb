class GameQuestion < ApplicationRecord
  belongs_to :game
  has_many :user_answers
end
