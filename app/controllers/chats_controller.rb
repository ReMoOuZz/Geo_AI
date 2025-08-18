class ChatsController < ApplicationController
  before_action :set_params

  def create
    @chat = Chat.new(chat_params)
  end

  def show
  end

  private

  def chat_params
    params.require(:chat).permit(:title, :user_id, :quiz_id)
  end

  def set_params
    @quiz = Quiz.find(params[:id])
  end
end
