require 'ostruct'
class UserAnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_game
  before_action :set_fake_data, only: [:show]

  def show
    @user_answer = UserAnswer.new
  end

  def create
    # Pour l'instant, juste rediriger vers la question suivante
    redirect_to game_user_answer_path(@game, params[:id].to_i + 1)
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_fake_data
    # Données de test statiques
    questions = [
      {
        content: "Quelle est la capitale de la France ?",
        answers: ["Paris", "Lyon", "Marseille", "Toulouse"]
      },
      {
        content: "Quel est le plus grand océan ?",
        answers: ["Pacifique", "Atlantique", "Indien", "Arctique"]
      },
      {
        content: "Sur quel continent se trouve l'Égypte ?",
        answers: ["Afrique", "Asie", "Europe", "Amérique"]
      }
    ]
    
    question_index = (params[:id].to_i - 1) % questions.length
    @question = OpenStruct.new(questions[question_index])
    @current_question_number = params[:id].to_i
    @total_questions = questions.length
  end
end


# class UserAnswersController < ApplicationController
#   before_action :authenticate_user!
#   before_action :set_game
#   before_action :set_game_question, only: [:show]

#   def show
#     @question = @game_question.question
#     @user_answer = UserAnswer.new
#     @current_question_number = @game_question.order
#     @total_questions = @game.game_questions.count
#   end

#   def create
#     @user_answer = UserAnswer.new(user_answer_params)
#     @user_answer.user = current_user
#     @user_answer.game = @game
#     @user_answer.game_question_id = params[:game_question_id]

#   if @user_answer.save
#     next_question = find_next_question
#     if next_question
#       redirect_to game_user_answer_path(@game, next_question)
#     else
#       redirect_to game_score_path(@game)
#     end
#   else
#     @game_question = GameQuestion.find(params[:id])
#     @question = @game_question.question
#     @current_question_number = @game.question.order
#     @total_questions = @game.game_questions.count
#     render :show
#   end
# end

# private

#   def set_game
#     @game = Game.find(params[:game_id])
#   end

#   def set_game_question
#     @game_question = @game.game_questions.find(params[:id])
#   end

#   def user_answer_params
#     params.require(:user_answer).permit(:content)
#   end

#   def find_next_question
#     current_order = @game_question.order
#     @game.game_questions.find_by(order: current_order + 1)
#   end
# end