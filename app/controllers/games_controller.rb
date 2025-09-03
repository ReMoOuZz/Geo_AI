class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save!
      @user = current_user
      @score = Score.create!(game: @game, user: @user)

      questions = Question.where(difficulty: @game.difficulty, category: @game.category)
      questions = questions.where(region: @game.region) unless @game.region == "random"

      selected_questions = questions.shuffle.sample(10)

      selected_questions.shuffle.each_with_index do |question, index|
        GameQuestion.create!(
          game: @game,
          order: index + 1,
          content: question.content,
          correct_answer: question.correct_answer,
          incorrect_answers: question.incorrect_answers,
          difficulty: question.difficulty,
          category: question.category,
          contexte: question.contexte,
          region: question.region
        )
      end

      redirect_to game_path(@game, order: 1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:id])
    @user_answer = UserAnswer.new
    @question = @game.game_questions.find_by(order: params[:order])
  end

  private

  def game_params
    params.require(:game).permit(:order, :difficulty, :category, :region, :game_type)
  end
end
