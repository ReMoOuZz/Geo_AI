class UserAnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    content = params.dig(:user_answer, :content)

    @user_answer = UserAnswer.new(content: content, game_question_id: params[:game_question])
    @game_question = @user_answer.game_question
    @game = Game.find(params[:game_id])

    @user_answer.user = current_user
    @user_answer.game = @game

    if @user_answer.save!
      @user_response = @user_answer.content

      @is_correct = check_answer(@user_response)

      if @is_correct
        @result_message = "Correct ! #{@game_question.contexte}"
        new_question
      else
        @result_message = "Incorrect, la bonne réponse était #{@game_question.correct_answer} ! #{@game_question.contexte}"
        new_question
      end

      redirect_to game_path(@game)
    else
      render :new, status:  :unprocessable_entity
    end
  end

  private

  def check_answer(user_response)
    user_response.to_s.strip.downcase == @game_question.correct_answer.to_s.strip.downcase
  end

  def new_question
    @find_question = Question.where(
      difficulty: @game.difficulty,
      category: @game.category,
      region: @game.region
      # game_type: @game.game_type
    ).order("RANDOM()").first

    GameQuestion.create!(
    game: @game,
    order: @game_question.order += 1,
    content: @find_question.content,
    correct_answer: @find_question.correct_answer,
    incorrect_answers: @find_question.incorrect_answers,
    difficulty: @find_question.difficulty,
    category: @find_question.category,
    contexte: @find_question.contexte,
    region: @find_question.region
    # game_type: @find_question.game_type
  )
  end
end
