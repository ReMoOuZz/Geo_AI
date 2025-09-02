class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save!
      @user = current_user
      @score = Score.create!(game: @game, user: @user)

      questions = Question.where(difficulty: @game.difficulty, region: @game.region)
      questions = Question.where(category: @game.category) unless @game.category == "random"

      @find_question = questions.order("RANDOM()").first

      GameQuestion.create!(
        game: @game,
        order: 1,
        content: @find_question.content,
        correct_answer: @find_question.correct_answer,
        incorrect_answers: @find_question.incorrect_answers,
        difficulty: @find_question.difficulty,
        category: @find_question.category,
        contexte: @find_question.contexte,
        region: @find_question.region
        # game_type: @find_question.game_type
      )

      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:id])
    @user_answer = UserAnswer.new
    @questions = @game.game_questions
  end

  private

  def game_params
    params.require(:game).permit(:order, :difficulty, :category, :region, :game_type)
  end
end
