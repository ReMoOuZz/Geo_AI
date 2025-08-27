class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      @question = Question.where(difficulty: @game.difficulty, category: @game.category, region: @game.region, game_type: @game.game_type)
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
