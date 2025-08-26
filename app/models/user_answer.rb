class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :game_question
  belongs_to :game
end
