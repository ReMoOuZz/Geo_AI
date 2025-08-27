class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save

      @find_question = Question.where(
          difficulty: @game.difficulty,
          category: @game.category,
          region: @game.region
          # game_type: @game.game_type
        ).order("RANDOM()").first

      @questions = Question.create!(
        difficulty: @find_question.difficulty,
        category: @find_question.category,
        region: @find_question.region
        # game_type: @find_question.game_type
      )
      redirect_to game_path(@game)
    else
      render :new, status:  :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:difficulty, :category, :region, :game_type)
  end
end
