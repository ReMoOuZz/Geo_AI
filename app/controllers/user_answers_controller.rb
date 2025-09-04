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
      @user_answer.is_correct = @is_correct
      @user_answer.save!
      set_score

      if @is_correct
        @score.value += 1
        @score.save
      end

      if @user_answer.game_question.order == 5
        redirect_to game_score_path(@game, @score)
      else
        # new_question
        redirect_to game_path(@game, order: @game_question.order + 1)
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def check_answer(user_response)
    user_response.to_s.strip.downcase == @game_question.correct_answer.to_s.strip.downcase
  end

  # def new_question
  #   questions = Question.where(difficulty: @game.difficulty, category: @game.category)
  #   questions = questions.where(region: @game.region) unless @game.region == "random"
  #   @find_question = @game.questions.where(order = @game_question.order + 1)

  # GameQuestion.create!(
      # game: @game,
      # order: @game_question.order += 1,
      # content: @find_question.content,
      # correct_answer: @find_question.correct_answer,
      # incorrect_answers: @find_question.incorrect_answers,
      # difficulty: @find_question.difficulty,
      # category: @find_question.category,
      # contexte: @find_question.contexte,
      # region: @find_question.region
      # game_type: @find_question.game_type    )
  # end

  def limit_questions
    if @user_answer.game_question.order == 2
      redirect_to game_score_path(@game, @score); return
    end
  end

  def set_score
    @score = Score.find_by(user: current_user, game: @game)
  end
end
