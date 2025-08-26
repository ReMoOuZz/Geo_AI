class Game < ApplicationRecord
  has_many :game_questions, dependent: :destroy
  has_many :questions, through: :game_questions
  has_many :game_participants, dependent: :destroy
  has_many :users, through: :game_participants
  has_many :user_answers, dependent: :destroy
  has_many :scores, dependent: :destroy

  validates :region, :category, :difficulty, presence: true
end
