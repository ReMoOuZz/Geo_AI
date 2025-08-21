class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:id])
    @total = Quiz::TOTAL
  end
end
