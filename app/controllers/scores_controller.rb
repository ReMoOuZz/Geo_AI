class ScoresController < ApplicationController
    def show
      @score = Score.find(params[:id])
    end
end
