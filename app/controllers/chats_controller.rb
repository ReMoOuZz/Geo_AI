class ChatsController < ApplicationController

  def create
    @chat = Chat.new(chat_params)
  end

  def show
  end

  private

  def chat_params
    params.require(:chat).permit(:title, :user_id, :quiz_id)
  end
end
