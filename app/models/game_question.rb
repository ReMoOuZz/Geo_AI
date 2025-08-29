class GameQuestion < ApplicationRecord
  belongs_to :game
  has_many :user_answers

  after_create_commit :broadcast_replace_to_game

  private

  def broadcast_replace_to_game
    broadcast_replace_to game, target: "question_card", partial: "user_answers/replace_question", locals: { game_question: self, game: self.game, user_answer: UserAnswer.new }
  end
end
